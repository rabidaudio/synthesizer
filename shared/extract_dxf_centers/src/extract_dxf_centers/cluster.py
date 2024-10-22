from collections import defaultdict


def ccw(A, B, C):
    """Check if three points are listed in a counterclockwise order."""
    return (C[1] - A[1]) * (B[0] - A[0]) > (B[1] - A[1]) * (C[0] - A[0])


def intersect(A, B, C, D):
    """Check if line segments AB and CD intersect."""
    if A == C or A == D or B == C or B == D:
        return True
    return ccw(A, C, D) != ccw(B, C, D) and ccw(A, B, C) != ccw(A, B, D)


def vec3_to_vec2(vec3):
    """Return the first two dimensions of a 3d vector."""
    return [vec3[0], vec3[1]]


def find_clusters(msp):
    """Given a modelspace, return clusters of overlapping lines."""
    # build a tree of intersections
    graph = defaultdict(set)
    for a in msp.query("*"):
        for b in msp.query("*"):
            if a != b and intersect(
                vec3_to_vec2(a.dxf.start),
                vec3_to_vec2(a.dxf.end),
                vec3_to_vec2(b.dxf.start),
                vec3_to_vec2(b.dxf.end),
            ):
                if b not in graph:
                    graph[b] = set()
                graph[b].add(a)

    # walk the tree to create clusters
    def dfs(node, visited, cluster):
        visited.add(node)
        cluster.add(node)
        for neighbor in graph[node]:
            if neighbor not in visited:
                dfs(neighbor, visited, cluster)

    clusters = []
    visited = set()
    for element in graph:
        if element not in visited:
            cluster = set()
            dfs(element, visited, cluster)
            clusters.append(cluster)
    return clusters


def center_of(cluster):
    """Given a set of lines, find their center point."""
    if len(cluster) == 0:
        return None
    first = list(cluster)[0]
    top = first.dxf.start[1]
    bottom = first.dxf.start[1]
    left = first.dxf.start[0]
    right = first.dxf.start[0]
    for el in cluster:
        top = max(top, el.dxf.start[1], el.dxf.end[1])
        bottom = min(bottom, el.dxf.start[1], el.dxf.end[1])
        left = min(left, el.dxf.start[0], el.dxf.end[0])
        right = max(right, el.dxf.start[0], el.dxf.end[0])
    return [(right + left) / 2, (top + bottom) / 2]

0 : 0

http://rosalind.info/problems/deg/

Why graphs?
Figure 1
Figure 2

A wide range of problems can be expressed with clarity and precision in the concise pictorial language of graphs. For instance, consider the task of coloring a political map. What is the minimum number of colors needed, with the obvious restriction that neighboring countries should have different colors? One of the difficulties in attacking this problem is that the map itself, even a stripped-down version like Figure 1, is usually cluttered with irrelevant information: intricate boundaries, border posts where three or more countries meet, open seas, and meandering rivers. Such distractions are absent from the mathematical object of Figure 2, a graph with one vertex for each country (1 is Brazil, 11 is Argentina) and edges between neighbors. It contains exactly the information needed for coloring, and nothing more. The precise goal is now to assign a color to each vertex so that no edge has endpoints of the same color.

Graph coloring is not the exclusive domain of map designers. Suppose a university needs to schedule examinations for all its classes and wants to use the fewest time slots possible. The only constraint is that two exams cannot be scheduled concurrently if some student will be taking both of them. To express this problem as a graph, use one vertex for each exam and put an edge between two vertices if there is a conflict, that is, if there is somebody taking both endpoint exams. Think of each time slot as having its own color. Then, assigning time slots is exactly the same as coloring this graph!

Formally, a graph is specified by a set of vertices (also called nodes) V
and by edges E between select pairs of vertices. In the map example, V={1,2,3,…,13} and E includes, among many other edges, {1,2}, {9,11}, and {7,13}. Here an edge between x and y specifically means “x shares a border with y.” This is a symmetric relation—it implies also that y shares a border with x—and we denote it using set notation, e={x,y}

. Such edges are undirected and are part of an undirected graph.

Sometimes graphs depict relations that do not have this reciprocity, in which case it is necessary to use edges with directions on them. There can be directed edges e
from x to y (written e=(x,y)), or from y to x (written (y,x)), or both. A particularly enormous example of a directed graph is the graph of all links in the World Wide Web. It has a vertex for each site on the Internet, and a directed edge (u,v) whenever site u has a link to site v

: in total, billions of nodes and edges! Understanding even the most basic connectivity properties of the Web is of great economic and social interest. Although the size of this problem is daunting, we will soon see that a lot of valuable information about the structure of a graph can, happily, be determined in just linear time.

Source: Algorithms by Dasgupta, Papadimitriou, Vazirani. McGraw-Hill. 2006.
Problem
Figure 3. The graph from the dataset

In an undirected graph, the degree d(u)
of a vertex u is the number of neighbors u

has, or equivalently, the number of edges incident upon it.

Given: A simple graph with n≤103

vertices in the edge list format.

Return: An array D[1..n]
where D[i] is the degree of vertex i

.

See Figure 3 for visual example from the sample dataset.
Sample Dataset

6 7
1 2
2 3
6 3
5 6
2 5
2 4
4 1

Sample Output

2 4 2 2 2 2


)

NB. http://rosalind.info/glossary/algo-edge-list-format/
NB. First 2 numbers are node count and edge count
sample =. 7 2 $ 2 }. 6 7 1 2 2 3 6 3 5 6 2 5 2 4 4 1

NB. Solution degrees of each node
y #/. y=.(,sample)


NB. Row1: Node IDs, Row2: Degrees
(~.y) ,:y #/. y=.(,sample)

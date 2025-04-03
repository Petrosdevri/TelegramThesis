import networkx as nx
import matplotlib.pyplot as plt
import json

with open('IntelSlavaZ.json') as f:
    data = json.load(f)

G = nx.Graph()
G.add_node("intelslava", title="Intel Slava Z")

for entry in data:
    G.add_node(entry['username'], title=entry['title'])
    G.add_edge("intelslava", entry['username'])

pos = nx.spring_layout(G)
nx.draw(G, pos, with_labels=True, node_size=2000, node_color="skyblue", font_size=5, font_weight="bold")

plt.title("Similar Channels of Intel Slava Z")
plt.savefig("intelslava_network.png", format="PNG", dpi=300, bbox_inches="tight")
plt.show()
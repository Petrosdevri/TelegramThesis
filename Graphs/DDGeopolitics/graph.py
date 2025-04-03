import networkx as nx
import matplotlib.pyplot as plt
import json

with open('DDGeopolitics.json') as f:
    data = json.load(f)

G = nx.Graph()
G.add_node("DDGeopolitics", title="DD Geopolitics")

for entry in data:
    G.add_node(entry['username'], title=entry['title'])
    G.add_edge("DDGeopolitics", entry['username'])

pos = nx.spring_layout(G)
nx.draw(G, pos, with_labels=True, node_size=2000, node_color="skyblue", font_size=5, font_weight="bold")

plt.title("Similar Channels of DD Geopolitics")
plt.savefig("ddgeopolitics_network.png", format="PNG", dpi=300, bbox_inches="tight")
plt.show()
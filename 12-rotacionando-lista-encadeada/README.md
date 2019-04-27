# Desafio #12: Rotacionando Lista Encadeada

## Contexto

Uma lista encadeada (*linked list* em inglês) é uma sequência de objetos. Os elementos dessa sequência, chamados de nós, são compostos por dois atributos: seu valor e uma referência ao próximo nó. Note que:

- o último nó **sempre** tem uma referência nula;
- listas encadeadas não são arrays (uma parte do desafio é pesquisar a diferença entres estas estruturas).

## O Desafio

Primeiramente, implemente uma lista encadeada básica. Depois disso, crie uma funcionalidade para deslocar os nós da lista `k` vezes para a direita. O produto final deve ser algo parecido com uma biblioteca. Exemplo:

```ruby
# Funcionalidade para criar nós (lembrando que cada nó tem de ter
# uma referência ao próximo nó, menos o último)
n3 = MyLinkedList::Node.new(value: 5)
n2 = MyLinkedList::Node.new(value: 3, next_node: n3)
n1 = MyLinkedList::Node.new(value: 7, next_node: n2)

# Funcionalidade para criar listas encadeadas
linked_list = MyLinkedList::LinkedList.new(nodes: [n1, n2, n3]) # => 7->3->5

# Funcionalidade para rotacionar lista encadeada
linked_list.rotate(2) => 3->5->7
```

## Exemplos

Considere a lista encadeada `A = 1->2->3->4->5`. Suponha que eu quero deslocar cada nó 3 vezes para a direita. Isso gera uma nova lista encadeada: `3->4->5->1->2`.

## Comentários

- Já que este desafio é o desenvolvimento de uma biblioteca, um boa documentação no README valerá mais 10 pontos.
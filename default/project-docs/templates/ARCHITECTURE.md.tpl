# Architecture

```mermaid
graph TD
  subgraph Overview
    A[Component A] --> B[Component B]
    B --> C[Component C]
  end
```

## Layer Model

| Layer | What it contains | Source of Truth |
|-------|-----------------|-----------------|
| 1 | {{ layer1-desc }} | {{ layer1-src }} |
| 2 | {{ layer2-desc }} | {{ layer2-src }} |
| 3 | {{ layer3-desc }} | {{ layer3-src }} |

## Data Flow

```mermaid
graph LR
  input[User Input] --> process[Processor]
  process --> output[Output]
```

## Key Design Decisions

1. {{ decision-1 }}
2. {{ decision-2 }}
3. {{ decision-3 }}

---
revision: 1
title: "[review] ADAPT: Attentive Self-Distillation and Dual-Decoder Prediction Fusion for Continual Panoptic Segmentation"
category: programming
tags:
  - review
created_at: 2025-02-09 11:17:13 +09:00
last_modified_at: 2025-02-10 02:04:27 +09:00
excerpt: KD study review - 0212
---

review of paper

## ADAPTATION STRATEGY

The existing method, ComFormer, fine-tunes the entire model for new tasks, but this approach degrades the performance of the base classes. Recently, most of the model weights have been fixed, updating only the newly introduced trainable queries, but this has resulted in decreased generalization capabilities for new tasks. Therefore, a method has been adopted where the image encoder and pixel decoder are fixed, and only components of the transformer decoder are fine-tuned. Each of the L transformer blocks includes a self-attention layer, a cross-attention layer, and a feed-forward network (FFN). For the transformer decoder, only the cross-attention layer and the FFN are fine-tuned to strike a balance.
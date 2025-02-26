---
revision: 1
title: "[리뷰] ADAPT: Attentive Self-Distillation and Dual-Decoder Prediction Fusion for Continual Panoptic Segmentation"
category: programming
tags:
  - review
created_at: 2025-02-09 11:17:13 +09:00
last_modified_at: 2025-02-10 02:04:27 +09:00
excerpt: "KD 스터디 논문 리뷰 - 0212 발표"
---

논문 리뷰입니다.

## ADAPTATION STRATEGY

기존 방법인 ComFormer는 새로운 작업에 대해 전체 모델을 미세조정하지만 이 경우에 기본 클래스의 성능이 저하됨
최근에는 대부분의 모델 가중치를 고정하고 새롭게 도입된 학습 가능한 쿼리만 업데이트하게 했지만 새로운 작업에 일반화하는 모델 능력이 저하됨
따라서 이미지 인코더와 픽셀 디코더를 고정하고 트랜스포머 디코더의 구성요소를 미세 조정하는 방식을 사용함
L개 트랜스포머 블록 각각에 셀프 어텐션 계층, 크로스 어텐션 계층, FFN 포함됨
트랜스포머 디코더에 대해서는 크로스 어텐션 계층과 FFN만 미세조정하면서 균형을 맞춤

![fig1](https://1drv.ms/i/c/af5642aec05791fb/IQcKWsc_laVFSbuUppCnai4eAZeIPwh5h1T-aGOJVvxvfNQ?width=1604&height=812)
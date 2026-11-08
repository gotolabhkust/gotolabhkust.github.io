---
# Leave the homepage title empty to use the site title
title:
date: 2022-10-24
type: landing

sections:
  # 合并为一个 block：标题 + 副标题 + Introduce 图片 + 正文 + 灰色卡片
  - block: markdown
    content:
      title: "<span style='font-size: 60px; font-weight: 800;'>Welcome to the GOTO Lab !</span>"
      text: |
        <!-- 副标题区域：去掉大负 margin，改为温和间距 -->
        <div style="text-align: center; margin-top: -10px; margin-bottom: 30px; font-size: 30px">
          We decode how synapses shape and stabilize memory.
          <hr style="border: none; border-top: 1px solid #eee; margin: 10px 0 15px 0;" />
        </div>

        <!-- 正文区域：Introduce 图片紧贴上方分割线 -->
        <div style="font-size: 20px; line-height: 1.8; color: #333; max-width: 900px; margin: 0 auto;">
          memory formation, consolidation, and updating, with a particular emphasis on the role of synaptic plasticity and long-term potentiation (LTP) in learning and memory.
          We develop and apply advanced optical techniques to visualize and manipulate synaptic plasticity in vivo. By combining targeted optical manipulation with real-time molecular imaging, we aim to investigate when and where memory-related LTP occurs, how neural activity and molecular signaling evolve during memory consolidation, and how synaptic plasticity contributes to the formation and maintenance of long-term memories.
          Our current research directions include:
          1. Optical manipulation of synaptic plasticity using CALI
          We employ chromophore-assisted light inactivation (CALI) to selectively reverse recently induced LTP in specific brain regions, including the hippocampus and anterior cingulate cortex. This approach enables us to investigate the temporal and spatial contributions of synaptic plasticity to memory consolidation and retrieval.
          2. Real-time imaging of LTP-related ERK activity using FRET
          We utilize fluorescence resonance energy transfer (FRET) biosensors and in vivo fiber microendoscopy to monitor ERK signaling dynamics at single-cell resolution in freely moving mice. This approach allows us to investigate the spatiotemporal patterns of LTP-related molecular activity across memory-associated brain regions during learning and memory consolidation.
        </div>

        <hr style="border: none; border-top: 1px solid #eee; margin: 10px 0 15px 0;" />

        <div style="text-align: center; margin-top: 0; margin-bottom: 20px;">
            <img src="/media/Introduce.png" alt="Introduce" style="max-width: 100%; height: auto;">
        </div>
---
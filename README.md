# EVA UI Skill

一个用于生成、审查和扩展 EVA 风格界面的设计 skill。  
目标不是做“泛科幻 UI”，而是稳定输出带有 EVA 监控屏和控制室气质的高密度仪表式界面。

## 特征

- 红色 / 橙色主导的状态驱动配色
- 高信息密度和强结构边框
- 条纹、刻度、准星、校准轨、阈值条等非文字图案语言
- 压缩型技术字体和仪表式数字读数
- 更像扫描、告警、信号刷新，而不是消费级产品动效

## 适用场景

- EVA 风格监控屏、作战屏、情报面板
- 科幻控制室 UI
- 高密度房产、金融、工业、安防、城市运行等信息终端
- 基于 Prompt 的界面生成规范
- 设计系统、组件库、前端视觉审查

## 仓库结构

```text
EVA-UI-SKILL/
  SKILL.md
  agents/
    openai.yaml
  references/
    style-principles.md
    tokens.md
    typography.md
    motion.md
    pattern-language.md
    data-elements.md
    component-rules.md
    prompt-recipes.md
    anti-patterns.md
  assets/
    example-lab/
      index.html
      styles.css
```

## 使用入口

优先从 [SKILL.md](/Users/sullivangu/Workspace/EVA-UI-SKILL/SKILL.md) 开始。  
它定义了这个 skill 的工作流、核心原则和引用地图。

建议阅读顺序：

1. [style-principles.md](/Users/sullivangu/Workspace/EVA-UI-SKILL/references/style-principles.md)
2. [tokens.md](/Users/sullivangu/Workspace/EVA-UI-SKILL/references/tokens.md)
3. [pattern-language.md](/Users/sullivangu/Workspace/EVA-UI-SKILL/references/pattern-language.md)
4. [data-elements.md](/Users/sullivangu/Workspace/EVA-UI-SKILL/references/data-elements.md)
5. [component-rules.md](/Users/sullivangu/Workspace/EVA-UI-SKILL/references/component-rules.md)
6. [prompt-recipes.md](/Users/sullivangu/Workspace/EVA-UI-SKILL/references/prompt-recipes.md)

## 示例资源

[assets/example-lab/index.html](/Users/sullivangu/Workspace/EVA-UI-SKILL/assets/example-lab/index.html)  
这是一个独立的静态示例页，用来快速查看这套 skill 的视觉方向。

## ClawSkill Hub 发布

ClawSkill Hub 校验时不要直接上传包含 `.git/` 的仓库根目录。  
如果直接把整个仓库打包，验证器会把 `.git/config`、`.git/HEAD`、`.git/description` 一起扫进去，然后报错。

这个仓库已经提供导出脚本：

```bash
bash scripts/export_hub_package.sh
```

执行后会生成一个干净的发布目录：

`build/hub-package/`

上传这个目录，而不是仓库根目录。

## 这套 Skill 强调什么

- 不靠字体单独完成风格识别
- 不做圆角卡片式 SaaS dashboard
- 不把渐变当装饰主角
- 用边框、条纹、准星、网格、刻度、阈值分段去构建层级
- 用颜色表达系统状态，而不是品牌气质

## 常见误区

请参考 [anti-patterns.md](/Users/sullivangu/Workspace/EVA-UI-SKILL/references/anti-patterns.md)。

最常见的问题是：

- 做成了“普通未来感后台”
- 只有大标题和高对比色，没有测量感
- 缺少条纹、tick、rail、reticle 等结构图案
- 留白过多，信息密度不足
- 动效太像互联网产品

## 当前状态

当前版本包含：

- skill 入口说明
- 一组可复用的设计规则引用文件
- 一份独立运行的静态示例模板

后续可以继续扩展：

- 更多页面模板
- 更完整的组件示例
- React / Next.js 实现版本
- 示例截图和封面图

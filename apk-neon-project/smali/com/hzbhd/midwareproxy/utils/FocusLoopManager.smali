.class public Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;
.super Ljava/lang/Object;
.source "FocusLoopManager.java"


# instance fields
.field private focusLoopViews:[Landroid/view/View;

.field private focusViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/view/View;ZLcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {p2}, [Landroid/view/View;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusLoopViews:[Landroid/view/View;

    .line 159
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setValidViews([Landroid/view/View;)V

    .line 160
    invoke-interface {p4}, Lcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;->isSelfFocusLogic()Z

    move-result p1

    if-nez p1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->loopViewFocusRankAllDirect()V

    .line 163
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setAllChangeListener(ZLcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Landroid/view/View;ZZLcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;)V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p2}, [Landroid/view/View;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/View;

    iput-object p1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusLoopViews:[Landroid/view/View;

    .line 169
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setValidViews([Landroid/view/View;)V

    .line 170
    invoke-interface {p5}, Lcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;->isSelfFocusLogic()Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->loopViewFocusRankLeftRight()V

    .line 173
    :cond_0
    invoke-direct {p0, p3, p5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setAllChangeListener(ZLcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;)V

    return-void
.end method

.method private loopViewFocusRankAllDirect()V
    .locals 7

    .line 102
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v2, 0x0

    move v3, v2

    .line 103
    :goto_0
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    if-nez v3, :cond_0

    .line 105
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusLeftUPId(Landroid/view/View;Landroid/view/View;)V

    .line 106
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 107
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusRightDownId(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v0, :cond_1

    .line 110
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusLeftUPId(Landroid/view/View;Landroid/view/View;)V

    .line 111
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusRightDownId(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusLeftUPId(Landroid/view/View;Landroid/view/View;)V

    .line 114
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusRightDownId(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private loopViewFocusRankLeftRight()V
    .locals 7

    .line 121
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    const/4 v2, 0x0

    move v3, v2

    .line 122
    :goto_0
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    if-nez v3, :cond_0

    .line 124
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusLeftId(Landroid/view/View;Landroid/view/View;)V

    .line 125
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 126
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusRightId(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    :cond_0
    if-lez v3, :cond_1

    if-ge v3, v0, :cond_1

    .line 129
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusLeftId(Landroid/view/View;Landroid/view/View;)V

    .line 130
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusRightId(Landroid/view/View;Landroid/view/View;)V

    goto :goto_1

    .line 132
    :cond_1
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusLeftId(Landroid/view/View;Landroid/view/View;)V

    .line 133
    iget-object v4, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v4, v5}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->setNextFocusRightId(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private setAllChangeListener(ZLcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;)V
    .locals 3

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 48
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    if-eqz p1, :cond_0

    .line 50
    sget v1, Lcom/hzbhd/midwareproxy/hardware/Hardware_Platform;->sBuildVersionSDK:I

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$1;

    invoke-direct {v2, p0, p2}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$1;-><init>(Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;Lcom/hzbhd/midwareproxy/utils/ItfcFocusLoop;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 63
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TextView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/Button;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageView;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$2;

    invoke-direct {v2, p0}, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager$2;-><init>(Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setNextFocusLeftId(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setNextFocusLeftId(I)V

    return-void
.end method

.method private setNextFocusLeftUPId(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 23
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 24
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setNextFocusUpId(I)V

    return-void
.end method

.method private setNextFocusRightDownId(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setNextFocusDownId(I)V

    return-void
.end method

.method private setNextFocusRightId(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setNextFocusRightId(I)V

    return-void
.end method

.method private setValidViews([Landroid/view/View;)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 149
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 150
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/hzbhd/midwareproxy/utils/FocusLoopManager;->focusViewList:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

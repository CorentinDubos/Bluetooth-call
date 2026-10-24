.class public Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar;
.super Landroid/widget/LinearLayout;
.source "N82_navigationBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar$TYPE;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public SetUIandCallBack(Ljava/util/HashMap;ILandroid/view/View$OnClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar$TYPE;",
            "Ljava/lang/Integer;",
            ">;I",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    sget-object v1, Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar$TYPE;->STRING:Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar$TYPE;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 33
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 35
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar;->addView(Landroid/view/View;)V

    .line 37
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 38
    :cond_1
    sget-object v1, Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar$TYPE;->IMAGE:Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar$TYPE;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 39
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(I)V

    .line 41
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 42
    invoke-virtual {p0, v1}, Lcom/hzbhd/midwareproxy/CommonUI/N82_navigationBar;->addView(Landroid/view/View;)V

    .line 43
    invoke-virtual {v1, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.class public Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CustomAdapterDialpad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;,
        Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;

.field private oldPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->oldPosition:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->lists:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    .line 23
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    move v0, p1

    .line 25
    :goto_0
    sget-object v1, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;->dialpads:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    new-instance v2, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;

    sget-object v3, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;->dialpads:[I

    aget v3, v3, v0

    sget-object v4, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;->dialpadsP:[I

    aget v4, v4, v0

    sget-object v5, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;->dialpadsSize:[[I

    aget-object v5, v5, v0

    sget-object v6, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadData;->keys:[Ljava/lang/String;

    aget-object v6, v6, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;-><init>(II[ILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->lists:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$CustomAdapterDialpad(ILandroid/view/View;)V
    .locals 4

    .line 39
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->setSelectPosition(I)V

    .line 41
    iget-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x48fd8573

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x2e7a5e

    if-eq v0, v1, :cond_1

    const v1, 0x5a5b649

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "clean"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v3

    goto :goto_1

    :cond_1
    const-string v0, "call"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "hangup"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move p2, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p2, -0x1

    :goto_1
    if-eqz p2, :cond_6

    if-eq p2, v3, :cond_5

    if-eq p2, v2, :cond_4

    .line 52
    iget-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mOnItemClickListener:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;

    if-eqz p2, :cond_7

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;->onNumberCallBack(Ljava/lang/String;)V

    goto :goto_2

    .line 49
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mOnItemClickListener:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;->onHangup()V

    goto :goto_2

    .line 46
    :cond_5
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mOnItemClickListener:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;->onClean()V

    goto :goto_2

    .line 43
    :cond_6
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mOnItemClickListener:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;->onCall()V

    :cond_7
    :goto_2
    return-void
.end method

.method public synthetic lambda$onBindViewHolder$1$CustomAdapterDialpad(ILandroid/view/View;)Z
    .locals 2

    .line 57
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->setSelectPosition(I)V

    .line 59
    iget-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, 0x0

    const v1, 0x5a5b649

    if-eq p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "clean"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mOnItemClickListener:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;->onLongClean()V

    :cond_3
    :goto_2
    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->onBindViewHolder(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;I)V
    .locals 4

    .line 38
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->access$000(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/ui/custom/dialpad/-$$Lambda$CustomAdapterDialpad$l1C5jQg9g09J5TbMNCdZYw7Tgxc;

    invoke-direct {v1, p0, p2}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/-$$Lambda$CustomAdapterDialpad$l1C5jQg9g09J5TbMNCdZYw7Tgxc;-><init>(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->access$000(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/ui/custom/dialpad/-$$Lambda$CustomAdapterDialpad$-cG-GhGiY6cdSl8YM1rHbag71ic;

    invoke-direct {v1, p0, p2}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/-$$Lambda$CustomAdapterDialpad$-cG-GhGiY6cdSl8YM1rHbag71ic;-><init>(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 67
    iget v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->oldPosition:I

    if-ne v0, p2, :cond_0

    .line 68
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->access$100(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 69
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07084c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 70
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 71
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 72
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->access$100(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->access$000(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->getDrawableSelected()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->access$100(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 76
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070c77

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 77
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->getSize()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 78
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;

    invoke-virtual {v2}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->getSize()[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 79
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->access$100(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;->access$000(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;

    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadEntity;->getDrawableNormal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;
    .locals 3

    .line 33
    new-instance p2, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b02b4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$ViewHolder;-><init>(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnItemClickListener(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->mOnItemClickListener:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;

    return-void
.end method

.method public setSelectPosition(I)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->lists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->lists:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->oldPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->lists:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_0
    iput p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->oldPosition:I

    .line 106
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

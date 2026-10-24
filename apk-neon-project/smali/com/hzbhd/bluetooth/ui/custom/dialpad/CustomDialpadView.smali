.class public Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;
.super Landroid/widget/RelativeLayout;
.source "CustomDialpadView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomAdapterDialpad:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b02da

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mView:Landroid/view/View;

    .line 31
    invoke-direct {p0}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mView:Landroid/view/View;

    const v1, 0x7f0901f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 37
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 38
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 39
    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 40
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;

    iget-object v3, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mCustomAdapterDialpad:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 41
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mCustomAdapterDialpad:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->setSelectPosition(I)V

    return-void
.end method


# virtual methods
.method public setOnAdapterClickListener(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomDialpadView;->mCustomAdapterDialpad:Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad;->setOnItemClickListener(Lcom/hzbhd/bluetooth/ui/custom/dialpad/CustomAdapterDialpad$OnItemClickListener;)V

    return-void
.end method

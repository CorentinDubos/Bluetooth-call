.class public Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CustomAdapterContract.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$OnClickListener;,
        Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;,
        Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;",
        ">;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private listBack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;",
            ">;"
        }
    .end annotation
.end field

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mOnClickListener:Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->lists:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->listBack:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->lists:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->lists:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;)Ljava/util/List;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->listBack:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .line 57
    new-instance v0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;

    invoke-direct {v0, p0}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ContractsFilter;-><init>(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;)V

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->lists:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$CustomAdapterContract(ILcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;Landroid/view/View;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->mOnClickListener:Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$OnClickListener;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p2}, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->getNumber()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p3, p1, p2}, Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$OnClickListener;->onClick(Landroid/view/View;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->onBindViewHolder(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;I)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->lists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;

    .line 39
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;->access$000(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;->access$100(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p1, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/hzbhd/bluetooth/ui/custom/-$$Lambda$CustomAdapterContract$PGkhG4a8ZqSeH7AtVfX6fUlGh3M;

    invoke-direct {v1, p0, p2, v0}, Lcom/hzbhd/bluetooth/ui/custom/-$$Lambda$CustomAdapterContract$PGkhG4a8ZqSeH7AtVfX6fUlGh3M;-><init>(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;ILcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;
    .locals 3

    .line 33
    new-instance p2, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040012

    invoke-static {v1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResId(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;-><init>(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;Landroid/view/View;)V

    return-object p2
.end method

.method public setOnClickListener(Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$OnClickListener;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->mOnClickListener:Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$OnClickListener;

    return-void
.end method

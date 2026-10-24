.class public Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdapterContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;

.field private tv_name:Landroid/widget/TextView;

.field private tv_phone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;Landroid/view/View;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$ViewHolder;->this$0:Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;

    .line 93
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090250

    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$ViewHolder;->tv_name:Landroid/widget/TextView;

    const p1, 0x7f090254

    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$ViewHolder;->tv_phone:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$ViewHolder;->tv_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract$ViewHolder;->tv_phone:Landroid/widget/TextView;

    return-object p0
.end method

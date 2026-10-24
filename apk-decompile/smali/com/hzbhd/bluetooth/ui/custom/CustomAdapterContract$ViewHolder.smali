.class public Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CustomAdapterContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

.field private tv_name:Landroid/widget/TextView;

.field private tv_phone:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;Landroid/view/View;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;->this$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    .line 96
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0901e3

    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;->tv_name:Landroid/widget/TextView;

    const p1, 0x7f0901a3

    .line 98
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;->tv_phone:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$000(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;->tv_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;)Landroid/widget/TextView;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract$ViewHolder;->tv_phone:Landroid/widget/TextView;

    return-object p0
.end method

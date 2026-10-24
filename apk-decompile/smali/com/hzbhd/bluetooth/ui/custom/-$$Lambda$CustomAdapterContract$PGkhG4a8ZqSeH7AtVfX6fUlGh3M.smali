.class public final synthetic Lcom/hzbhd/bluetooth/ui/custom/-$$Lambda$CustomAdapterContract$PGkhG4a8ZqSeH7AtVfX6fUlGh3M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;


# direct methods
.method public synthetic constructor <init>(Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;ILcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/custom/-$$Lambda$CustomAdapterContract$PGkhG4a8ZqSeH7AtVfX6fUlGh3M;->f$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    iput p2, p0, Lcom/hzbhd/bluetooth/ui/custom/-$$Lambda$CustomAdapterContract$PGkhG4a8ZqSeH7AtVfX6fUlGh3M;->f$1:I

    iput-object p3, p0, Lcom/hzbhd/bluetooth/ui/custom/-$$Lambda$CustomAdapterContract$PGkhG4a8ZqSeH7AtVfX6fUlGh3M;->f$2:Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/custom/-$$Lambda$CustomAdapterContract$PGkhG4a8ZqSeH7AtVfX6fUlGh3M;->f$0:Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;

    iget v1, p0, Lcom/hzbhd/bluetooth/ui/custom/-$$Lambda$CustomAdapterContract$PGkhG4a8ZqSeH7AtVfX6fUlGh3M;->f$1:I

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/custom/-$$Lambda$CustomAdapterContract$PGkhG4a8ZqSeH7AtVfX6fUlGh3M;->f$2:Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hzbhd/bluetooth/ui/custom/CustomAdapterContract;->lambda$onBindViewHolder$0$CustomAdapterContract(ILcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;Landroid/view/View;)V

    return-void
.end method

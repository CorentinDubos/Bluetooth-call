.class public final synthetic Lcom/hzbhd/bluetooth/ui/_m6/-$$Lambda$AdapterContract$Y4ol4d-9vbuxPPX2ooDDOjDW0cY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;


# direct methods
.method public synthetic constructor <init>(Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;ILcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_m6/-$$Lambda$AdapterContract$Y4ol4d-9vbuxPPX2ooDDOjDW0cY;->f$0:Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;

    iput p2, p0, Lcom/hzbhd/bluetooth/ui/_m6/-$$Lambda$AdapterContract$Y4ol4d-9vbuxPPX2ooDDOjDW0cY;->f$1:I

    iput-object p3, p0, Lcom/hzbhd/bluetooth/ui/_m6/-$$Lambda$AdapterContract$Y4ol4d-9vbuxPPX2ooDDOjDW0cY;->f$2:Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_m6/-$$Lambda$AdapterContract$Y4ol4d-9vbuxPPX2ooDDOjDW0cY;->f$0:Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;

    iget v1, p0, Lcom/hzbhd/bluetooth/ui/_m6/-$$Lambda$AdapterContract$Y4ol4d-9vbuxPPX2ooDDOjDW0cY;->f$1:I

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/_m6/-$$Lambda$AdapterContract$Y4ol4d-9vbuxPPX2ooDDOjDW0cY;->f$2:Lcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/hzbhd/bluetooth/ui/_m6/AdapterContract;->lambda$onBindViewHolder$0$AdapterContract(ILcom/hzbhd/bluetooth/ui/_m6/BlueToothBean;Landroid/view/View;)V

    return-void
.end method

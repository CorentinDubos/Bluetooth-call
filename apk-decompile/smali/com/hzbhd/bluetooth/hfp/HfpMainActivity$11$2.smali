.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;
.super Ljava/lang/Object;
.source "HfpMainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->onLongClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;I)V
    .locals 0

    .line 1507
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

    iput p2, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1510
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$900(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    move-result-object v0

    new-instance v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2$1;

    invoke-direct {v1, p0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2$1;-><init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;)V

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->setOnNameAndPhoneResultListener(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;)V

    return-void
.end method

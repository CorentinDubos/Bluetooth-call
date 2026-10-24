.class Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2$1;
.super Ljava/lang/Object;
.source "HfpMainActivity.java"

# interfaces
.implements Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;)V
    .locals 0

    .line 1510
    iput-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2$1;->this$2:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public result(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1513
    iget-object v0, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2$1;->this$2:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

    iget-object v0, v0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->val$mainView:Lcom/hzbhd/bluetooth/ui/_a6/MainView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2$1;->this$2:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;

    iget v1, v1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;->val$position:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/hzbhd/bluetooth/ui/_a6/MainView;->setCollectionName(ILjava/lang/String;Ljava/lang/String;)V

    .line 1514
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2$1;->this$2:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$800(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;Z)V

    .line 1515
    iget-object p1, p0, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2$1;->this$2:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11$2;->this$1:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;

    iget-object p1, p1, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity$11;->this$0:Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->access$900(Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;)Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->setOnNameAndPhoneResultListener(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$OnNameAndPhoneResultListener;)V

    return-void
.end method

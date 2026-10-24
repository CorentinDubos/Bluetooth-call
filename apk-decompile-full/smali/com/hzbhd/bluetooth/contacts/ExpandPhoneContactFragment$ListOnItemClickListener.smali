.class Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnItemClickListener;
.super Ljava/lang/Object;
.source "ExpandPhoneContactFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListOnItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;)V
    .locals 0

    .line 1370
    iput-object p1, p0, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment$ListOnItemClickListener;->this$0:Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1376
    invoke-static {}, Lcom/hzbhd/bluetooth/contacts/ExpandPhoneContactFragment;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "----ExpandPhoneContactFragment.onItemClick()"

    invoke-static {p1, p2}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

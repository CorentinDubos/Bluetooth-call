.class Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$1;
.super Ljava/lang/Object;
.source "A6CallLogAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;

.field final synthetic val$displayNumber:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;Ljava/lang/CharSequence;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$1;->this$0:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$1;->val$displayNumber:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$1;->this$0:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->access$000(Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;)Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$1;->this$0:Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;->access$000(Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter;)Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$1;->val$displayNumber:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/hzbhd/bluetooth/ui/_a6/A6CallLogAdapter$CallLogAdapterListener;->doDialAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

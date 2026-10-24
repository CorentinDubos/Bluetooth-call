.class Lcom/hzbhd/bluetooth/call/CallFragment$2;
.super Landroid/os/Handler;
.source "CallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/call/CallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hzbhd/bluetooth/call/CallFragment;


# direct methods
.method constructor <init>(Lcom/hzbhd/bluetooth/call/CallFragment;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 568
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 569
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$100(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->afterCallShowView()V

    goto/16 :goto_0

    .line 570
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 572
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$300(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    iget-object v3, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v3}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCallTime(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->parseSecond2String(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$400(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 575
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 576
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$500(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 577
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$500(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 579
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 580
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$600(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string p1, "BluetoothCallFragment"

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------Phone number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$600(Lcom/hzbhd/bluetooth/call/CallFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 584
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$700(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;

    move-result-object p1

    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getCurrentCallNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$200(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/bluetooth/call/CallFragment$ContactAsyncQueryHandler;->queryContactName(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 587
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    .line 588
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_5

    .line 589
    invoke-static {}, Lcom/hzbhd/midwareproxy/canbus/reportCanbus/Util;->getDeviceInfo()Ljava/lang/String;

    move-result-object p1

    const-string v0, "N52"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$800(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/bluetooth/widget/CircularImageView;

    move-result-object p1

    const v0, 0x7f08040f

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 590
    :cond_4
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$800(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/bluetooth/widget/CircularImageView;

    move-result-object p1

    const v0, 0x7f0815c2

    invoke-virtual {p1, v0}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 593
    :cond_5
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 594
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 593
    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 595
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    .line 596
    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object p1

    .line 597
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 598
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$800(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/bluetooth/widget/CircularImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object v0, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {v0}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$800(Lcom/hzbhd/bluetooth/call/CallFragment;)Lcom/hzbhd/bluetooth/widget/CircularImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/hzbhd/bluetooth/widget/CircularImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 601
    :cond_6
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    .line 602
    iget-object p1, p0, Lcom/hzbhd/bluetooth/call/CallFragment$2;->this$0:Lcom/hzbhd/bluetooth/call/CallFragment;

    invoke-static {p1, v1}, Lcom/hzbhd/bluetooth/call/CallFragment;->access$902(Lcom/hzbhd/bluetooth/call/CallFragment;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 605
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_0
    return-void
.end method

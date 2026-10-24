.class Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;
.super Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RDSInfoChangeListenerTransport"
.end annotation


# static fields
.field private static final MESSAGE_AFLevel_CHANGED:I = 0x1

.field private static final MESSAGE_AFSeek_CHANGED:I = 0x2

.field private static final MESSAGE_AF_STATUS_CHANGED:I = 0xc

.field private static final MESSAGE_CURRENT_STATION_CHANGED:I = 0xf

.field private static final MESSAGE_EONStatus_CHANGED:I = 0x3

.field private static final MESSAGE_EWSStatus_CHANGED:I = 0x4

.field private static final MESSAGE_EWS_ARRIVED_CHANGED:I = 0x11

.field private static final MESSAGE_PSInfo_CHANGED:I = 0x5

.field private static final MESSAGE_PS_STATUS_CHANGED:I = 0x10

.field private static final MESSAGE_PTYInfo_CHANGED:I = 0x6

.field private static final MESSAGE_PTYSeek_CHANGED:I = 0x7

.field private static final MESSAGE_PTY_TYPE_INFO_CHANGED:I = 0xe

.field private static final MESSAGE_RTInfo_CHANGED:I = 0x8

.field private static final MESSAGE_RT_STATUS_CHANGED:I = 0x12

.field private static final MESSAGE_RegionStatus_CHANGED:I = 0x13

.field private static final MESSAGE_TASeek_CHANGED:I = 0x9

.field private static final MESSAGE_TAStatus_CHANGED:I = 0xa

.field private static final MESSAGE_TPINFO_CHANGED:I = 0xd

.field private static final MESSAGE_TPSeek_CHANGED:I = 0xb


# instance fields
.field private mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/radio/RadioManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/radio/RadioManager;Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;Landroid/os/Looper;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->this$0:Lcom/hzbhd/midwareproxy/radio/RadioManager;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRDSInfoChangeListener$Stub;-><init>()V

    .line 387
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    if-nez p3, :cond_0

    .line 390
    new-instance p2, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport$1;-><init>(Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;Landroid/os/Looper;Lcom/hzbhd/midwareproxy/radio/RadioManager;)V

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0

    .line 397
    :cond_0
    new-instance p2, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport$2;

    invoke-direct {p2, p0, p3, p1}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport$2;-><init>(Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;Landroid/os/Looper;Lcom/hzbhd/midwareproxy/radio/RadioManager;)V

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 407
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 453
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 454
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->RegionStatusChanged(Z)V

    goto/16 :goto_0

    .line 481
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 482
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->RTStatusChanged(Z)V

    goto/16 :goto_0

    .line 477
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 478
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->EWSArrivedChanged(Z)V

    goto/16 :goto_0

    .line 473
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 474
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->PSStatusChanged(Z)V

    goto/16 :goto_0

    .line 469
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 470
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->CurrentStationStatusChanged(Z)V

    goto/16 :goto_0

    .line 465
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 466
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->PTYTypeInfoChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 462
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->TPInfoChanged(Z)V

    goto/16 :goto_0

    .line 417
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 418
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->AFStatusChanged(Z)V

    goto/16 :goto_0

    .line 457
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 458
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->TPSeekChanged(Z)V

    goto/16 :goto_0

    .line 449
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 450
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->TAStatusChanged(Z)V

    goto/16 :goto_0

    .line 445
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 446
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->TASeekChanged(Z)V

    goto :goto_0

    .line 441
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 442
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->RTInfoChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 438
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->PTYSeekChanged(Z)V

    goto :goto_0

    .line 433
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 434
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->PTYInfoChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 430
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->PSInfoChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 426
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->EWSStatusChanged(Z)V

    goto :goto_0

    .line 421
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 422
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->EONStatusChanged(Z)V

    goto :goto_0

    .line 413
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 414
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->AFSeekChanged(Z)V

    goto :goto_0

    .line 409
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RDSInfoChangeListener;->AFLevelChanged(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$100(Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;Landroid/os/Message;)V
    .locals 0

    .line 362
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public AFLevelChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 497
    iput v1, v0, Landroid/os/Message;->what:I

    .line 498
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 499
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public AFSeekChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 505
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 506
    iput v1, v0, Landroid/os/Message;->what:I

    .line 507
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 508
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public AFStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 612
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xc

    .line 613
    iput v1, v0, Landroid/os/Message;->what:I

    .line 614
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 615
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public CurrentStationStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 630
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xf

    .line 631
    iput v1, v0, Landroid/os/Message;->what:I

    .line 632
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 633
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public EONStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 515
    iput v1, v0, Landroid/os/Message;->what:I

    .line 516
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 517
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public EWSArrivedChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 648
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x11

    .line 649
    iput v1, v0, Landroid/os/Message;->what:I

    .line 650
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 651
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public EWSStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 523
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 524
    iput v1, v0, Landroid/os/Message;->what:I

    .line 525
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 526
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public PSInfoChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 533
    iput v1, v0, Landroid/os/Message;->what:I

    .line 534
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 535
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public PSStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 639
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x10

    .line 640
    iput v1, v0, Landroid/os/Message;->what:I

    .line 641
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 642
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public PTYInfoChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 551
    iput v1, v0, Landroid/os/Message;->what:I

    .line 552
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 553
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public PTYSeekChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 559
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 560
    iput v1, v0, Landroid/os/Message;->what:I

    .line 561
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 562
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public PTYTypeInfoChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 541
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xe

    .line 542
    iput v1, v0, Landroid/os/Message;->what:I

    .line 543
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 544
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public RTInfoChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    .line 569
    iput v1, v0, Landroid/os/Message;->what:I

    .line 570
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 571
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public RTStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x12

    .line 658
    iput v1, v0, Landroid/os/Message;->what:I

    .line 659
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 660
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public RegionStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x13

    .line 596
    iput v1, v0, Landroid/os/Message;->what:I

    .line 597
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 598
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public TASeekChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 578
    iput v1, v0, Landroid/os/Message;->what:I

    .line 579
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 580
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public TAStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xa

    .line 587
    iput v1, v0, Landroid/os/Message;->what:I

    .line 588
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 589
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public TPInfoChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xd

    .line 622
    iput v1, v0, Landroid/os/Message;->what:I

    .line 623
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 624
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public TPSeekChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 604
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xb

    .line 605
    iput v1, v0, Landroid/os/Message;->what:I

    .line 606
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 607
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RDSInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

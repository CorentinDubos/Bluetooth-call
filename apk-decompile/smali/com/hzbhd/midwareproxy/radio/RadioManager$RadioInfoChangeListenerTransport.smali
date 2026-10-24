.class Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;
.super Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/radio/RadioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioInfoChangeListenerTransport"
.end annotation


# static fields
.field private static final MESSAGE_AutoSearchStatus_CHANGED:I = 0x4

.field private static final MESSAGE_AutoSearchWithPreviewStatus_CHANGED:I = 0x5

.field private static final MESSAGE_BandType_CHANGED:I = 0x3

.field private static final MESSAGE_ChannelType_CHANGED:I = 0x0

.field private static final MESSAGE_DAB_DLS_CHANGED:I = 0x11

.field private static final MESSAGE_DAB_INFOR_CHANGED:I = 0x10

.field private static final MESSAGE_DAB_Kbit_CHANGED:I = 0x12

.field private static final MESSAGE_DAB_LABEL_CHANGED:I = 0xf

.field private static final MESSAGE_DAB_SERVICEID_CHANGED:I = 0x13

.field private static final MESSAGE_DAB_SERVICE_LABEL_CHANGED:I = 0x14

.field private static final MESSAGE_FORCEMONO_CHANGED:I = 0xe

.field private static final MESSAGE_Freq_CHANGED:I = 0x2

.field private static final MESSAGE_LOCAL_CHANGED:I = 0xc

.field private static final MESSAGE_PRESET_PS_NAME_CHANGED:I = 0xd

.field private static final MESSAGE_PresetList_CHANGED:I = 0x8

.field private static final MESSAGE_PresetPSList_CHANGED:I = 0x9

.field private static final MESSAGE_RegionStatus_CHANGED:I = 0x15

.field private static final MESSAGE_STEREO_CHANGED:I = 0xb

.field private static final MESSAGE_SignalStrength_CHANGED:I = 0x1

.field private static final MESSAGE_StepDownStatus_CHANGED:I = 0x7

.field private static final MESSAGE_StepUpStatus_CHANGED:I = 0x6


# instance fields
.field private mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

.field private final mListenerHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/hzbhd/midwareproxy/radio/RadioManager;


# direct methods
.method constructor <init>(Lcom/hzbhd/midwareproxy/radio/RadioManager;Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;Landroid/os/Looper;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->this$0:Lcom/hzbhd/midwareproxy/radio/RadioManager;

    invoke-direct {p0}, Lcom/hzbhd/midwareproxy/radio/aidl/IRadioInfoChangeListener$Stub;-><init>()V

    .line 124
    iput-object p2, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    if-nez p3, :cond_0

    .line 126
    new-instance p2, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p0, p3, p1}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport$1;-><init>(Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;Landroid/os/Looper;Lcom/hzbhd/midwareproxy/radio/RadioManager;)V

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    goto :goto_0

    .line 133
    :cond_0
    new-instance p2, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport$2;

    invoke-direct {p2, p0, p3, p1}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport$2;-><init>(Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;Landroid/os/Looper;Lcom/hzbhd/midwareproxy/radio/RadioManager;)V

    iput-object p2, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    :goto_0
    return-void
.end method

.method private _handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->dabServiceItemLabel(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :pswitch_2
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->dabServiceIDInfor([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 206
    :pswitch_3
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->dabKbitInfor(I)V

    goto/16 :goto_0

    .line 203
    :pswitch_4
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->dabDlsInfor(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :pswitch_5
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->dabServiceInfor([I)V

    goto/16 :goto_0

    .line 197
    :pswitch_6
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->dabServiceLabel([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :pswitch_7
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioForceMonoChanged(I)V

    goto/16 :goto_0

    .line 191
    :pswitch_8
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioPresetFreqPSNameChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :pswitch_9
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioLocalChanged(I)V

    goto/16 :goto_0

    .line 185
    :pswitch_a
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioStereoChanged(I)V

    goto/16 :goto_0

    .line 181
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioPresetFreqPSListChanged([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioPresetFreqListChanged([Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 170
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioStepDownStatusChanged(Z)V

    goto :goto_0

    .line 173
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 174
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioStepUpStatusChanged(Z)V

    goto :goto_0

    .line 149
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 150
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioAutoSearchWithPreviewStatusChanged(Z)V

    goto :goto_0

    .line 145
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 146
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioAutoSearchStatusChanged(Z)V

    goto :goto_0

    .line 153
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioBandTypeChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioFreqChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :pswitch_13
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 166
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioSignalStrengthChanged(I)V

    goto :goto_0

    .line 157
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListener:Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;

    invoke-interface {v0, p1}, Lcom/hzbhd/midwareproxy/radio/aidl/RadioInfoChangeListener;->radioChannelTypeChanged(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
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
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;Landroid/os/Message;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->_handleMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public dabDlsInfor(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dabKbitInfor(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dabServiceIDInfor([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dabServiceInfor([I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dabServiceItemLabel(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public dabServiceLabel([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public radioAutoSearchStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 226
    iput v1, v0, Landroid/os/Message;->what:I

    .line 227
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 228
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioAutoSearchWithPreviewStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 236
    iput v1, v0, Landroid/os/Message;->what:I

    .line 237
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 238
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioBandTypeChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 245
    iput v1, v0, Landroid/os/Message;->what:I

    .line 246
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 247
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioChannelTypeChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 254
    iput v1, v0, Landroid/os/Message;->what:I

    .line 255
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 256
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioForceMonoChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public radioFreqChanged(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 263
    iput v1, v0, Landroid/os/Message;->what:I

    .line 264
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 265
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioLocalChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public radioPresetFreqListChanged([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8

    .line 297
    iput v1, v0, Landroid/os/Message;->what:I

    .line 298
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 299
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioPresetFreqPSListChanged([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x9

    .line 305
    iput v1, v0, Landroid/os/Message;->what:I

    .line 306
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 307
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioPresetFreqPSNameChanged(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public radioSignalStrengthChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 272
    iput v1, v0, Landroid/os/Message;->what:I

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 274
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioStepDownStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 281
    iput v1, v0, Landroid/os/Message;->what:I

    .line 282
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 283
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioStepUpStatusChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x6

    .line 289
    iput v1, v0, Landroid/os/Message;->what:I

    .line 290
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 291
    iget-object p1, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public radioStereoChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/hzbhd/midwareproxy/radio/RadioManager$RadioInfoChangeListenerTransport;->mListenerHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.class public Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;
.super Landroid/widget/LinearLayout;
.source "DialBubblePadViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private digitsStr:Ljava/lang/String;

.field private final digitsTv:Landroid/widget/TextView;

.field private tmepDigitsStr:Ljava/lang/String;

.field viewIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/hzbhd/bluetooth/ui/_a6/DialPadViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p2, 0xd

    new-array p2, p2, [I

    .line 26
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->viewIds:[I

    const-string p2, ""

    .line 43
    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b016b

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    :goto_0
    iget-object p2, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->viewIds:[I

    array-length p4, p2

    if-ge p3, p4, :cond_0

    .line 62
    aget p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    const p2, 0x7f090129

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsTv:Landroid/widget/TextView;

    .line 66
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->addView(Landroid/view/View;)V

    return-void

    :array_0
    .array-data 4
        0x7f09005f
        0x7f090062
        0x7f090065
        0x7f090068
        0x7f09006b
        0x7f09006e
        0x7f090071
        0x7f090074
        0x7f090077
        0x7f09007a
        0x7f090159
        0x7f09015c
        0x7f090087
    .end array-data
.end method


# virtual methods
.method public handlerBackSpace()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x13

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public handlerDialBtnEvent()V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpCurrentState(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8c

    if-ne v1, v0, :cond_2

    .line 168
    sget-object v0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->TAG:Ljava/lang/String;

    const-string v1, "handlerDialBtnEvent handlerHandupEvent 9933"

    invoke-static {v0, v1}, Lcom/hzbhd/midwareproxy/utils/HzbhdLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpDialCall(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f04003b

    .line 172
    invoke-static {v0}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResBool(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpAnswerCall(Ljava/lang/String;)V

    .line 174
    :cond_1
    sget-object v0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->TAG:Ljava/lang/String;

    const-string v1, "handlerDialBtnEvent handlerHandupEvent 9944"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public handlerHandupEvent()V
    .locals 2

    .line 179
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpTerminateOngoingCall(Ljava/lang/String;)V

    return-void
.end method

.method public keyEventHandler(Ljava/lang/String;)V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsStr:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->tmepDigitsStr:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->digitsTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-static {}, Lcom/hzbhd/bluetooth/Bluetooth;->getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hzbhd/bluetooth/Bluetooth;->getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->inInCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v0

    invoke-static {}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getBluetoothManager()Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->getHfpConnectedDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/hzbhd/midwareproxy/bluetooth/BluetoothServiceManager;->reqHfpSendDtmf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "#"

    .line 132
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    const-string p1, "*"

    .line 124
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    const p1, 0x7f040014

    .line 151
    invoke-static {p1}, Lcom/hzbhd/midwareproxy/utils/OverrideUtil;->getResInt(I)I

    move-result p1

    const/16 v0, 0x34

    if-ne p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->handlerHandupEvent()V

    goto :goto_0

    .line 154
    :cond_0
    invoke-static {}, Lcom/hzbhd/bluetooth/Bluetooth;->getHfpMainActivity()Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/hzbhd/bluetooth/hfp/HfpMainActivity;->showFragment(ZI)V

    goto :goto_0

    .line 146
    :sswitch_3
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->handlerHandupEvent()V

    goto :goto_0

    .line 137
    :sswitch_4
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->handlerBackSpace()V

    goto :goto_0

    .line 142
    :sswitch_5
    invoke-virtual {p0}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->handlerDialBtnEvent()V

    goto :goto_0

    :sswitch_6
    const-string p1, "9"

    .line 120
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_7
    const-string p1, "8"

    .line 116
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_8
    const-string p1, "7"

    .line 112
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_9
    const-string p1, "6"

    .line 108
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_a
    const-string p1, "5"

    .line 104
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_b
    const-string p1, "4"

    .line 100
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_c
    const-string p1, "3"

    .line 96
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_d
    const-string p1, "2"

    .line 92
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_e
    const-string p1, "1"

    .line 88
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_f
    const-string p1, "0"

    .line 128
    invoke-virtual {p0, p1}, Lcom/hzbhd/bluetooth/ui/_a6/DialBubblePadViews;->keyEventHandler(Ljava/lang/String;)V

    .line 161
    :goto_0
    invoke-static {}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->getInstance()Lcom/hzbhd/midwareproxy/setting/SettingManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hzbhd/midwareproxy/setting/SettingManager;->playBeep()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09005f -> :sswitch_f
        0x7f090062 -> :sswitch_e
        0x7f090065 -> :sswitch_d
        0x7f090068 -> :sswitch_c
        0x7f09006b -> :sswitch_b
        0x7f09006e -> :sswitch_a
        0x7f090071 -> :sswitch_9
        0x7f090074 -> :sswitch_8
        0x7f090077 -> :sswitch_7
        0x7f09007a -> :sswitch_6
        0x7f090084 -> :sswitch_5
        0x7f090087 -> :sswitch_4
        0x7f09008d -> :sswitch_3
        0x7f090093 -> :sswitch_2
        0x7f090124 -> :sswitch_2
        0x7f090125 -> :sswitch_4
        0x7f090127 -> :sswitch_5
        0x7f090159 -> :sswitch_1
        0x7f09015c -> :sswitch_0
    .end sparse-switch
.end method

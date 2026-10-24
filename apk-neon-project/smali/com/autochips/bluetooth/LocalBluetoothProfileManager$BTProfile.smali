.class public final enum Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;
.super Ljava/lang/Enum;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/LocalBluetoothProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BTProfile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_A2DP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_AVRCP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_AVRCP_CT:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_BIP_Initiator:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_BIP_Responder:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_BPP_Sender:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_DUN:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_DUN_DT:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_FTP_Client:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_FTP_Server:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_HEADSET:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_HF:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_HID:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_MAP_Server:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_OPP_Client:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_OPP_Server:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_PAN_GN:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_PAN_NAP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_PBAP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_PBAP_Client:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_PRXM:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_PRXR:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

.field public static final enum Bluetooth_SIMAP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;


# instance fields
.field public final localizedString:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 143
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_HEADSET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HEADSET:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 144
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_A2DP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_A2DP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 145
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_HID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HID:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 146
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_FTP_Client"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_FTP_Client:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 147
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_FTP_Server"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_FTP_Server:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 148
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_BIP_Initiator"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_BIP_Initiator:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 149
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_BIP_Responder"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_BIP_Responder:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 150
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_BPP_Sender"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_BPP_Sender:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 151
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_SIMAP"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_SIMAP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 152
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_PBAP"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PBAP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 153
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_OPP_Server"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_OPP_Server:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 154
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_OPP_Client"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_OPP_Client:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 155
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_DUN"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_DUN:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 156
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_AVRCP"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_AVRCP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 157
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_PRXM"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PRXM:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 158
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_PRXR"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PRXR:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 159
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_PAN_NAP"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PAN_NAP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 160
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_PAN_GN"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PAN_GN:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 161
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_MAP_Server"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_MAP_Server:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 162
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_HF"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HF:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 163
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_PBAP_Client"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PBAP_Client:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 164
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_A2DP_SINK"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 165
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_AVRCP_CT"

    const/16 v15, 0x16

    const/16 v14, 0x16

    invoke-direct {v0, v1, v15, v14}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_AVRCP_CT:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 166
    new-instance v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const-string v1, "Bluetooth_DUN_DT"

    const/16 v14, 0x17

    const/16 v15, 0x17

    invoke-direct {v0, v1, v14, v15}, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_DUN_DT:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v1, 0x18

    new-array v1, v1, [Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    .line 142
    sget-object v14, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HEADSET:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v14, v1, v2

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_A2DP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HID:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v4

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_FTP_Client:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v5

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_FTP_Server:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v6

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_BIP_Initiator:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v7

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_BIP_Responder:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v8

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_BPP_Sender:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v9

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_SIMAP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v10

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PBAP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v11

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_OPP_Server:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v12

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_OPP_Client:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    aput-object v2, v1, v13

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_DUN:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_AVRCP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PRXM:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PRXR:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PAN_NAP:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PAN_GN:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_MAP_Server:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_HF:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_PBAP_Client:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_A2DP_SINK:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->Bluetooth_AVRCP_CT:Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const/16 v2, 0x17

    aput-object v0, v1, v2

    sput-object v1, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->$VALUES:[Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 169
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 170
    iput p3, p0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->localizedString:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;
    .locals 1

    .line 142
    const-class v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    return-object p0
.end method

.method public static values()[Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;
    .locals 1

    .line 142
    sget-object v0, Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->$VALUES:[Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    invoke-virtual {v0}, [Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autochips/bluetooth/LocalBluetoothProfileManager$BTProfile;

    return-object v0
.end method

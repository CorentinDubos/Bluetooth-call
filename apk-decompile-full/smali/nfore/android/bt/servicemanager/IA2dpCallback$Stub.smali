.class public abstract Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;
.super Landroid/os/Binder;
.source "IA2dpCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/IA2dpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/IA2dpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.IA2dpCallback"

.field static final TRANSACTION_onA2dpStateChanged:I = 0x1

.field static final TRANSACTION_onAvrcpBrowsingStateChanged:I = 0x3

.field static final TRANSACTION_onAvrcpErrorResponse:I = 0x26

.field static final TRANSACTION_onAvrcpEventAddressedPlayerChanged:I = 0x1a

.field static final TRANSACTION_onAvrcpEventAvailablePlayerChanged:I = 0x19

.field static final TRANSACTION_onAvrcpEventBatteryStatusChanged:I = 0x10

.field static final TRANSACTION_onAvrcpEventNowPlayingContentChanged:I = 0x18

.field static final TRANSACTION_onAvrcpEventPlaybackPosChanged:I = 0xf

.field static final TRANSACTION_onAvrcpEventPlaybackStatusChanged:I = 0xb

.field static final TRANSACTION_onAvrcpEventPlayerSettingChanged:I = 0x12

.field static final TRANSACTION_onAvrcpEventSystemStatusChanged:I = 0x11

.field static final TRANSACTION_onAvrcpEventTrackChanged:I = 0xc

.field static final TRANSACTION_onAvrcpEventTrackReachedEnd:I = 0xd

.field static final TRANSACTION_onAvrcpEventTrackReachedStart:I = 0xe

.field static final TRANSACTION_onAvrcpEventUidsChanged:I = 0x1b

.field static final TRANSACTION_onAvrcpEventVolumeChanged:I = 0x1c

.field static final TRANSACTION_onAvrcpStateChanged:I = 0x2

.field static final TRANSACTION_retAvrcpAbsoluteVolumeSet:I = 0x25

.field static final TRANSACTION_retAvrcpAddressedPlayerSet:I = 0x1d

.field static final TRANSACTION_retAvrcpBatteryStatusOfCtInformed:I = 0x17

.field static final TRANSACTION_retAvrcpBrowsedPlayerSet:I = 0x1e

.field static final TRANSACTION_retAvrcpCapabilitiesSupportEvent:I = 0x4

.field static final TRANSACTION_retAvrcpDisplayableCharsetInformed:I = 0x16

.field static final TRANSACTION_retAvrcpElementAttributesPlaying:I = 0x9

.field static final TRANSACTION_retAvrcpFolderItems:I = 0x1f

.field static final TRANSACTION_retAvrcpItemAttributes:I = 0x21

.field static final TRANSACTION_retAvrcpMetadataReceivingAborted:I = 0x13

.field static final TRANSACTION_retAvrcpNowPlayingAdded:I = 0x24

.field static final TRANSACTION_retAvrcpPathChanged:I = 0x20

.field static final TRANSACTION_retAvrcpPlayStatus:I = 0xa

.field static final TRANSACTION_retAvrcpPlayerSettingAttributeText:I = 0x14

.field static final TRANSACTION_retAvrcpPlayerSettingAttributesList:I = 0x5

.field static final TRANSACTION_retAvrcpPlayerSettingCurrentValues:I = 0x7

.field static final TRANSACTION_retAvrcpPlayerSettingValueSet:I = 0x8

.field static final TRANSACTION_retAvrcpPlayerSettingValueText:I = 0x15

.field static final TRANSACTION_retAvrcpPlayerSettingValuesList:I = 0x6

.field static final TRANSACTION_retAvrcpSearchResult:I = 0x23

.field static final TRANSACTION_retAvrcpSelectedItemPlayed:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 809
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 810
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/IA2dpCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.IA2dpCallback"

    .line 821
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 822
    instance-of v1, v0, Lnfore/android/bt/servicemanager/IA2dpCallback;

    if-eqz v1, :cond_1

    .line 823
    check-cast v0, Lnfore/android/bt/servicemanager/IA2dpCallback;

    return-object v0

    .line 825
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/IA2dpCallback;
    .locals 1

    .line 2787
    sget-object v0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IA2dpCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/IA2dpCallback;)Z
    .locals 1

    .line 2780
    sget-object v0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IA2dpCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2781
    sput-object p0, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/IA2dpCallback;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "nfore.android.bt.servicemanager.IA2dpCallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1281
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1266
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1270
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1274
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1275
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpErrorResponse(Ljava/lang/String;IIB)V

    .line 1276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1255
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1259
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1260
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V

    .line 1261
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1246
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1249
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpNowPlayingAdded(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1233
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1239
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1240
    invoke-virtual {p0, p1, p4, v2, v3}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpSearchResult(Ljava/lang/String;IJ)V

    .line 1241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1224
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1226
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1227
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpSelectedItemPlayed(Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1211
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1215
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 1217
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 1218
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1200
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1204
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1205
    invoke-virtual {p0, p1, v2, v3}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpPathChanged(Ljava/lang/String;J)V

    .line 1206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1187
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1194
    invoke-virtual {p0, p1, p4, v2, v3}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpFolderItems(Ljava/lang/String;IJ)V

    .line 1195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1174
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1180
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1181
    invoke-virtual {p0, p1, p4, v2, v3}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V

    .line 1182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1165
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1168
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpAddressedPlayerSet(Ljava/lang/String;)V

    .line 1169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1154
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1158
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1159
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventVolumeChanged(Ljava/lang/String;B)V

    .line 1160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1143
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1148
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventUidsChanged(Ljava/lang/String;I)V

    .line 1149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1130
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1137
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V

    .line 1138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1121
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1124
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1112
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1115
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1103
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1106
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V

    .line 1107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1094
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1097
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1079
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 1088
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V

    .line 1089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1064
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1068
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1070
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 1073
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V

    .line 1074
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1053
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1057
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1058
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V

    .line 1059
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1040
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 1046
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 1047
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V

    .line 1048
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1029
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1031
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1033
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1034
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V

    .line 1035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1018
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1022
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1023
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V

    .line 1024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1007
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1012
    invoke-virtual {p0, p1, v2, v3}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V

    .line 1013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 998
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1001
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventTrackReachedStart(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 989
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 992
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V

    .line 993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 978
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 982
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 983
    invoke-virtual {p0, p1, v2, v3}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventTrackChanged(Ljava/lang/String;J)V

    .line 984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 967
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 972
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V

    .line 973
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 952
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 956
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    move-object v2, p0

    .line 961
    invoke-virtual/range {v2 .. v8}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpPlayStatus(Ljava/lang/String;JJB)V

    .line 962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 939
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 943
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 946
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V

    .line 947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 930
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 932
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 933
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 917
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 921
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 924
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V

    .line 925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 904
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 908
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 910
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 911
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V

    .line 912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 893
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 897
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 898
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V

    .line 899
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 882
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 886
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 887
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V

    .line 888
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 869
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 873
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 876
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V

    .line 877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 856
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 860
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 863
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onAvrcpStateChanged(Ljava/lang/String;II)V

    .line 864
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 843
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 847
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 849
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 850
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/IA2dpCallback$Stub;->onA2dpStateChanged(Ljava/lang/String;II)V

    .line 851
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 838
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
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

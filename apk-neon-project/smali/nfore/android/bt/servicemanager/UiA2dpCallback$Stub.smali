.class public abstract Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;
.super Landroid/os/Binder;
.source "UiA2dpCallback.java"

# interfaces
.implements Lnfore/android/bt/servicemanager/UiA2dpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnfore/android/bt/servicemanager/UiA2dpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "nfore.android.bt.servicemanager.UiA2dpCallback"

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

.field static final TRANSACTION_retAvrcpUpdateSongStatus:I = 0x27


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 826
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 827
    invoke-virtual {p0, p0, v0}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lnfore/android/bt/servicemanager/UiA2dpCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "nfore.android.bt.servicemanager.UiA2dpCallback"

    .line 838
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 839
    instance-of v1, v0, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    if-eqz v1, :cond_1

    .line 840
    check-cast v0, Lnfore/android/bt/servicemanager/UiA2dpCallback;

    return-object v0

    .line 842
    :cond_1
    new-instance v0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lnfore/android/bt/servicemanager/UiA2dpCallback;
    .locals 1

    .line 2844
    sget-object v0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiA2dpCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lnfore/android/bt/servicemanager/UiA2dpCallback;)Z
    .locals 1

    .line 2837
    sget-object v0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiA2dpCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2838
    sput-object p0, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub$Proxy;->sDefaultImpl:Lnfore/android/bt/servicemanager/UiA2dpCallback;

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

    const-string v2, "nfore.android.bt.servicemanager.UiA2dpCallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1311
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 1298
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1302
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 1304
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 1305
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1283
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1289
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1291
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1292
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpErrorResponse(Ljava/lang/String;IIB)V

    .line 1293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1272
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1276
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1277
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpAbsoluteVolumeSet(Ljava/lang/String;B)V

    .line 1278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1263
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1266
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpNowPlayingAdded(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1250
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1256
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1257
    invoke-virtual {p0, p1, p4, v2, v3}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpSearchResult(Ljava/lang/String;IJ)V

    .line 1258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1241
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1243
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1244
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpSelectedItemPlayed(Ljava/lang/String;)V

    .line 1245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1228
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1232
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 1234
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 1235
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpItemAttributes(Ljava/lang/String;[I[Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1217
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1222
    invoke-virtual {p0, p1, v2, v3}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpPathChanged(Ljava/lang/String;J)V

    .line 1223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1204
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1210
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1211
    invoke-virtual {p0, p1, p4, v2, v3}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpFolderItems(Ljava/lang/String;IJ)V

    .line 1212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1191
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1197
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1198
    invoke-virtual {p0, p1, p4, v2, v3}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpBrowsedPlayerSet(Ljava/lang/String;IJ)V

    .line 1199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1182
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1185
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpAddressedPlayerSet(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1171
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1173
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1175
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1176
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventVolumeChanged(Ljava/lang/String;B)V

    .line 1177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1160
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1165
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventUidsChanged(Ljava/lang/String;I)V

    .line 1166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1147
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1154
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventAddressedPlayerChanged(Ljava/lang/String;II)V

    .line 1155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1138
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1141
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventAvailablePlayerChanged(Ljava/lang/String;)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1129
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1132
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventNowPlayingContentChanged(Ljava/lang/String;)V

    .line 1133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1120
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1123
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpBatteryStatusOfCtInformed(Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1111
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1114
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpDisplayableCharsetInformed(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1096
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1102
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 1104
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 1105
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpPlayerSettingValueText(Ljava/lang/String;IB[B)V

    .line 1106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1081
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 1087
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 1090
    invoke-virtual {p0, p1, p4, v0, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpPlayerSettingAttributeText(Ljava/lang/String;IB[B)V

    .line 1091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1070
    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1074
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 1075
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpMetadataReceivingAborted(Ljava/lang/String;I)V

    .line 1076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1057
    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1061
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 1063
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 1064
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventPlayerSettingChanged(Ljava/lang/String;[B[B)V

    .line 1065
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1046
    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1050
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1051
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventSystemStatusChanged(Ljava/lang/String;B)V

    .line 1052
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1035
    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1037
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1039
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 1040
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventBatteryStatusChanged(Ljava/lang/String;B)V

    .line 1041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1024
    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1028
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1029
    invoke-virtual {p0, p1, v2, v3}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventPlaybackPosChanged(Ljava/lang/String;J)V

    .line 1030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1015
    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1018
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventTrackReachedStart(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 1006
    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 1009
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventTrackReachedEnd(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 995
    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 999
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 1000
    invoke-virtual {p0, p1, v2, v3}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventTrackChanged(Ljava/lang/String;J)V

    .line 1001
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 984
    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 988
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    .line 989
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpEventPlaybackStatusChanged(Ljava/lang/String;B)V

    .line 990
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 969
    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 975
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 977
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    move-object v2, p0

    .line 978
    invoke-virtual/range {v2 .. v8}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpPlayStatus(Ljava/lang/String;JJB)V

    .line 979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 956
    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 960
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p4

    .line 962
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 963
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpElementAttributesPlaying(Ljava/lang/String;[I[Ljava/lang/String;)V

    .line 964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 947
    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 950
    invoke-virtual {p0, p1}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpPlayerSettingValueSet(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 934
    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 936
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 938
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 940
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 941
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpPlayerSettingCurrentValues(Ljava/lang/String;[B[B)V

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 921
    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p4

    .line 927
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 928
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpPlayerSettingValuesList(Ljava/lang/String;B[B)V

    .line 929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 910
    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 912
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 915
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpPlayerSettingAttributesList(Ljava/lang/String;[B)V

    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 899
    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 904
    invoke-virtual {p0, p1, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->retAvrcpCapabilitiesSupportEvent(Ljava/lang/String;[B)V

    .line 905
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 886
    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 888
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 890
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 892
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 893
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpBrowsingStateChanged(Ljava/lang/String;II)V

    .line 894
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 873
    :pswitch_25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 875
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 877
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 879
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 880
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onAvrcpStateChanged(Ljava/lang/String;II)V

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 860
    :pswitch_26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 866
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 867
    invoke-virtual {p0, p1, p4, p2}, Lnfore/android/bt/servicemanager/UiA2dpCallback$Stub;->onA2dpStateChanged(Ljava/lang/String;II)V

    .line 868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 855
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
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

.class public Lcom/hzbhd/bluetooth/constants/BluetoothConstants;
.super Ljava/lang/Object;
.source "BluetoothConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hzbhd/bluetooth/constants/BluetoothConstants$FavoriteQuery;,
        Lcom/hzbhd/bluetooth/constants/BluetoothConstants$ContactQuery;
    }
.end annotation


# static fields
.field public static final CALL_KEY_IDS:[I

.field public static final DIALPAD_KEY_IDS:[I

.field public static final LEFT_BTN_IDS:[I

.field public static final LEFT_BTN_IDS_WITH_MUSIC:[I

.field public static final LETTERS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 27

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_0

    sput-object v0, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->DIALPAD_KEY_IDS:[I

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 16
    sput-object v0, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->CALL_KEY_IDS:[I

    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    .line 21
    filled-new-array/range {v1 .. v26}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->LETTERS:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 25
    fill-array-data v0, :array_1

    sput-object v0, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->LEFT_BTN_IDS:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 26
    fill-array-data v0, :array_2

    sput-object v0, Lcom/hzbhd/bluetooth/constants/BluetoothConstants;->LEFT_BTN_IDS_WITH_MUSIC:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f090062
        0x7f090065
        0x7f090068
        0x7f09006b
        0x7f09006e
        0x7f090071
        0x7f090074
        0x7f090077
        0x7f09007a
        0x7f09005f
        0x7f090159
        0x7f09015c
    .end array-data

    :array_1
    .array-data 4
        0x7f09014b
        0x7f090150
        0x7f090149
        0x7f09014a
        0x7f090151
    .end array-data

    :array_2
    .array-data 4
        0x7f09014b
        0x7f090150
        0x7f090149
        0x7f09014a
        0x7f090151
        0x7f09014f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

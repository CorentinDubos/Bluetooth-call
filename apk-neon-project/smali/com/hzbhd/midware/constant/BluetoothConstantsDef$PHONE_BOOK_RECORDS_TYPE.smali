.class public final enum Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;
.super Ljava/lang/Enum;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PHONE_BOOK_RECORDS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

.field public static final enum CONTACT_PHONE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

.field public static final enum CONTACT_SIMCard:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

.field public static final enum DIALED_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

.field public static final enum MISSED_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

.field public static final enum RECEIVED_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 192
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    const-string v1, "CONTACT_PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->CONTACT_PHONE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    .line 193
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    const-string v1, "CONTACT_SIMCard"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->CONTACT_SIMCard:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    .line 194
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    const-string v1, "MISSED_CALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->MISSED_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    .line 195
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    const-string v1, "RECEIVED_CALL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->RECEIVED_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    .line 196
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    const-string v1, "DIALED_CALL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->DIALED_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    .line 191
    sget-object v7, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->CONTACT_PHONE:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    aput-object v7, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->CONTACT_SIMCard:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->MISSED_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->RECEIVED_CALL:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;
    .locals 1

    .line 191
    const-class v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;
    .locals 1

    .line 191
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_RECORDS_TYPE;

    return-object v0
.end method

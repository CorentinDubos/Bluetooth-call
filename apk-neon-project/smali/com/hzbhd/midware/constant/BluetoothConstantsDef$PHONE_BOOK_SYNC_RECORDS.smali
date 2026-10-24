.class public final enum Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;
.super Ljava/lang/Enum;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PHONE_BOOK_SYNC_RECORDS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

.field public static final enum ALL_RECORDS:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

.field public static final enum CALL_HISTORY:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

.field public static final enum PHONE_AND_SIMCard:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

.field public static final enum PHONE_MEMORY:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

.field public static final enum SIM_CARD:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 184
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    const-string v1, "PHONE_MEMORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->PHONE_MEMORY:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    .line 185
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    const-string v1, "SIM_CARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->SIM_CARD:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    .line 186
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    const-string v1, "PHONE_AND_SIMCard"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->PHONE_AND_SIMCard:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    .line 187
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    const-string v1, "CALL_HISTORY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->CALL_HISTORY:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    .line 188
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    const-string v1, "ALL_RECORDS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->ALL_RECORDS:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    .line 183
    sget-object v7, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->PHONE_MEMORY:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    aput-object v7, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->SIM_CARD:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->PHONE_AND_SIMCard:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->CALL_HISTORY:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;
    .locals 1

    .line 183
    const-class v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;
    .locals 1

    .line 183
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONE_BOOK_SYNC_RECORDS;

    return-object v0
.end method

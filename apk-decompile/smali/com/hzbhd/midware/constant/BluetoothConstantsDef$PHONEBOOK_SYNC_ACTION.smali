.class public final enum Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;
.super Ljava/lang/Enum;
.source "BluetoothConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/BluetoothConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PHONEBOOK_SYNC_ACTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

.field public static final enum END:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

.field public static final enum ERROR:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

.field public static final enum PROGRESSING:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

.field public static final enum START:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

.field public static final enum TIMEOUT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 176
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->START:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    .line 177
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    const-string v1, "PROGRESSING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->PROGRESSING:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    .line 178
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    const-string v1, "END"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->END:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    .line 179
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    const-string v1, "TIMEOUT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->TIMEOUT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    .line 180
    new-instance v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    const-string v1, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->ERROR:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    .line 175
    sget-object v7, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->START:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    aput-object v7, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->PROGRESSING:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->END:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->TIMEOUT:Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;
    .locals 1

    .line 175
    const-class v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;
    .locals 1

    .line 175
    sget-object v0, Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->$VALUES:[Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/BluetoothConstantsDef$PHONEBOOK_SYNC_ACTION;

    return-object v0
.end method

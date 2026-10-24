.class public final enum Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;
.super Ljava/lang/Enum;
.source "CommonTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BYTE_ORDER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

.field public static final enum BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

.field public static final enum LITTLE_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    const-string v1, "BIG_ENDIAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    new-instance v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    const-string v1, "LITTLE_ENDIAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->LITTLE_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    .line 8
    sget-object v4, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->BIG_ENDIAN:Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->$VALUES:[Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;
    .locals 1

    .line 8
    const-class v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;
    .locals 1

    .line 8
    sget-object v0, Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->$VALUES:[Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/iPod/utils/CommonTools$BYTE_ORDER;

    return-object v0
.end method

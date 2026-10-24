.class public final enum Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;
.super Ljava/lang/Enum;
.source "ConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/utils/ConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TS_DEFULT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

.field public static final enum LONG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

.field public static final enum LONG_TYPE:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

.field public static final enum SHORT:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

.field public static final enum TSCONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 49
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    const-string v1, "TSCONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->TSCONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    .line 50
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    const-string v1, "SHORT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->SHORT:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    .line 51
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    const-string v1, "LONG"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->LONG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    .line 52
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    const-string v1, "LONG_TYPE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->LONG_TYPE:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    .line 48
    sget-object v6, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->TSCONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->SHORT:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->LONG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->$VALUES:[Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;
    .locals 1

    .line 48
    const-class v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;
    .locals 1

    .line 48
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->$VALUES:[Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$TS_DEFULT;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

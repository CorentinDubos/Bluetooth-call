.class public final enum Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;
.super Ljava/lang/Enum;
.source "ConfigUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midwareproxy/utils/ConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EXPORT_MSG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

.field public static final enum ANDROID_CONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

.field public static final enum TSCONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 59
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    const-string v1, "TSCONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->TSCONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    .line 60
    new-instance v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    const-string v1, "ANDROID_CONFIG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->ANDROID_CONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    .line 58
    sget-object v4, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->TSCONFIG:Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;
    .locals 1

    .line 58
    const-class v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;
    .locals 1

    .line 58
    sget-object v0, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->$VALUES:[Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    invoke-virtual {v0}, [Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;

    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/hzbhd/midwareproxy/utils/ConfigUtils$EXPORT_MSG;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

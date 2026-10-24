.class public final enum Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;
.super Ljava/lang/Enum;
.source "ConfigDSPConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GEQ"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

.field public static final enum FREQ:Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

.field public static final enum GAIN:Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

.field public static final enum Q:Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 101
    new-instance v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    const-string v1, "FREQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;->FREQ:Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    .line 102
    new-instance v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    const-string v1, "Q"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;->Q:Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    .line 103
    new-instance v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    const-string v1, "GAIN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;->GAIN:Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    .line 100
    sget-object v5, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;->FREQ:Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;->Q:Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;->$VALUES:[Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;
    .locals 1

    .line 100
    const-class v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;
    .locals 1

    .line 100
    sget-object v0, Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;->$VALUES:[Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    invoke-virtual {v0}, [Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/config/lib/dsp/ConfigDSPConstant$GEQ;

    return-object v0
.end method

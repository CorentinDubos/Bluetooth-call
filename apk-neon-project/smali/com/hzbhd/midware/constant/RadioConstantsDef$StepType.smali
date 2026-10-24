.class public final enum Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;
.super Ljava/lang/Enum;
.source "RadioConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/RadioConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StepType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

.field public static final enum SETP_MANUAL:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

.field public static final enum STEP_AUTO:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

.field public static final enum STEP_DEFAULT:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 21
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    const-string v1, "STEP_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->STEP_DEFAULT:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    .line 22
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    const-string v1, "STEP_AUTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->STEP_AUTO:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    .line 23
    new-instance v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    const-string v1, "SETP_MANUAL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->SETP_MANUAL:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    .line 20
    sget-object v5, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->STEP_DEFAULT:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->STEP_AUTO:Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->$VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;
    .locals 1

    .line 20
    const-class v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;
    .locals 1

    .line 20
    sget-object v0, Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->$VALUES:[Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/RadioConstantsDef$StepType;

    return-object v0
.end method

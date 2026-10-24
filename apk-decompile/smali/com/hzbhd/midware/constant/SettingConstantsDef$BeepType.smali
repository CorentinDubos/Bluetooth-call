.class public final enum Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;
.super Ljava/lang/Enum;
.source "SettingConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/SettingConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BeepType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

.field public static final enum ERROR:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

.field public static final enum FAIL:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

.field public static final enum OK:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

.field public static final enum UPGRADE:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 297
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->OK:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    .line 298
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->ERROR:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    .line 299
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    const-string v1, "FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->FAIL:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    .line 300
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    const-string v1, "UPGRADE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->UPGRADE:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    .line 296
    sget-object v6, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->OK:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->ERROR:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->FAIL:Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->$VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 296
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;
    .locals 1

    .line 296
    const-class v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;
    .locals 1

    .line 296
    sget-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->$VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/SettingConstantsDef$BeepType;

    return-object v0
.end method

.class public final enum Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;
.super Ljava/lang/Enum;
.source "SettingConstantsDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/midware/constant/SettingConstantsDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

.field public static final enum LONG_EVENT:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

.field public static final enum LONG_UP:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

.field public static final enum NONE:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

.field public static final enum PRESS_DOWN:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

.field public static final enum PRESS_UP:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 224
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->NONE:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    .line 225
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    const-string v1, "PRESS_DOWN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->PRESS_DOWN:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    .line 226
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    const-string v1, "PRESS_UP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->PRESS_UP:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    .line 227
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    const-string v1, "LONG_EVENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->LONG_EVENT:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    .line 228
    new-instance v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    const-string v1, "LONG_UP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->LONG_UP:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    .line 223
    sget-object v7, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->NONE:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    aput-object v7, v1, v2

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->PRESS_DOWN:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->PRESS_UP:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->LONG_EVENT:Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->$VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;
    .locals 1

    .line 223
    const-class v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;
    .locals 1

    .line 223
    sget-object v0, Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->$VALUES:[Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    invoke-virtual {v0}, [Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/midware/constant/SettingConstantsDef$KeyState;

    return-object v0
.end method

.class public final enum Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;
.super Ljava/lang/Enum;
.source "Keyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hzbhd/bluetooth/widget/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

.field public static final enum DTMF:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

.field public static final enum GOTO:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

.field public static final enum INVALID:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

.field public static final enum PHONE:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

.field public static final enum PIN:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 41
    new-instance v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    const-string v1, "GOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->GOTO:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    new-instance v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    const-string v1, "PHONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->PHONE:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    new-instance v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    const-string v1, "DTMF"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->DTMF:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    new-instance v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    const-string v1, "PIN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->PIN:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    new-instance v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    const-string v1, "INVALID"

    const/4 v6, 0x4

    const/16 v7, 0x64

    invoke-direct {v0, v1, v6, v7}, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->INVALID:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    .line 40
    sget-object v7, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->GOTO:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    aput-object v7, v1, v2

    sget-object v2, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->PHONE:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    aput-object v2, v1, v3

    sget-object v2, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->DTMF:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    aput-object v2, v1, v4

    sget-object v2, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->PIN:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->$VALUES:[Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->mValue:I

    .line 46
    iput p3, p0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->mValue:I

    return-void
.end method

.method public static final intToKeyboardMode(I)Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 60
    sget-object p0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->INVALID:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    return-object p0

    .line 58
    :cond_0
    sget-object p0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->PIN:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    return-object p0

    .line 56
    :cond_1
    sget-object p0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->DTMF:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    return-object p0

    .line 54
    :cond_2
    sget-object p0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->PHONE:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    return-object p0

    .line 52
    :cond_3
    sget-object p0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->GOTO:Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;
    .locals 1

    .line 40
    const-class v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    return-object p0
.end method

.method public static values()[Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;
    .locals 1

    .line 40
    sget-object v0, Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->$VALUES:[Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    invoke-virtual {v0}, [Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hzbhd/bluetooth/widget/Keyboard$KeyboardMode;

    return-object v0
.end method

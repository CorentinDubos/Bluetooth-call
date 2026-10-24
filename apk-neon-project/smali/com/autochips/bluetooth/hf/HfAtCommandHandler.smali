.class public abstract Lcom/autochips/bluetooth/hf/HfAtCommandHandler;
.super Ljava/lang/Object;
.source "HfAtCommandHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleActionCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .line 52
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleBasicCommand(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleReadCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .line 62
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.method public handleResponseCode()V
    .locals 0

    return-void
.end method

.method public handleResponseCode([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 1

    .line 103
    new-instance p1, Landroid/bluetooth/AtCommandResult;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object p1
.end method

.method public handleTestCommand()Landroid/bluetooth/AtCommandResult;
    .locals 2

    .line 116
    new-instance v0, Landroid/bluetooth/AtCommandResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    return-object v0
.end method

.class public Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$SharedPreferencesCommitor;
.super Ljava/lang/Object;
.source "PBSyncStruct.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedPreferencesCommitor"
.end annotation


# instance fields
.field private mSharedata:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$SharedPreferencesCommitor;->mSharedata:Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/autochips/bluetooth/PbSyncManager/PBSyncStruct$SharedPreferencesCommitor;->mSharedata:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.class public Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;
.super Landroid/app/Presentation;
.source "DualScreenPresentation.java"


# instance fields
.field mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 13
    new-instance v0, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    invoke-direct {v0, p1, p2}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;I)V

    .line 18
    new-instance p3, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    invoke-direct {p3, p1, p2}, Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object p3, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    return-void
.end method


# virtual methods
.method public getBaseRootActivityView()Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object p1, p0, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->mBaseRootActivityView:Lcom/hzbhd/config/jar/dualscreen/BaseRootActivityView;

    invoke-virtual {p0, p1}, Lcom/hzbhd/config/jar/dualscreen/DualScreenPresentation;->setContentView(Landroid/view/View;)V

    return-void
.end method

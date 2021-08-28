.class public Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;
.super Ljava/lang/Object;
.source "VideoDisplay.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/IVideoDisplay;


# instance fields
.field private final mColor:I

.field private final mWindowHandle:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;I)V
    .locals 0
    .param p1, "windowHandle"    # Landroid/view/Surface;
    .param p2, "color"    # I

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->mWindowHandle:Landroid/view/Surface;

    .line 38
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->mColor:I

    .line 39
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->mColor:I

    return v0
.end method

.method public getWindowHandle()Landroid/view/Surface;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VideoDisplay;->mWindowHandle:Landroid/view/Surface;

    return-object v0
.end method

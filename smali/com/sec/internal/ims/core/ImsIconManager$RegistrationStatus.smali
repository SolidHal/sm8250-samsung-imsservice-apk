.class Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegistrationStatus"
.end annotation


# instance fields
.field mCmcRegistered:Z

.field mRcsRegistered:Z

.field mVolteRegistered:Z

.field mVowifiRegistered:Z

.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 287
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isAllRegistered()Z
    .locals 1

    .line 327
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isCmcRegistered()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCmcRegistered:Z

    return v0
.end method

.method isRcsRegistered()Z
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mRcsRegistered:Z

    return v0
.end method

.method isVolteRegistered()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVolteRegistered:Z

    return v0
.end method

.method isVowifiRegistered()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVowifiRegistered:Z

    return v0
.end method

.method setCmcRegistered(Z)V
    .locals 0
    .param p1, "registered"    # Z

    .line 319
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mCmcRegistered:Z

    .line 320
    return-void
.end method

.method setRcsRegistered(Z)V
    .locals 0
    .param p1, "registered"    # Z

    .line 303
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mRcsRegistered:Z

    .line 304
    return-void
.end method

.method setVolteRegistered(Z)V
    .locals 0
    .param p1, "registered"    # Z

    .line 295
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVolteRegistered:Z

    .line 296
    return-void
.end method

.method setVowifiRegistered(Z)V
    .locals 0
    .param p1, "registered"    # Z

    .line 311
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->mVowifiRegistered:Z

    .line 312
    return-void
.end method

.class Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/ImsIconManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconVisiblities"
.end annotation


# instance fields
.field mShowRcsIcon:Z

.field mShowVoWiFiIcon:Z

.field mShowVolteIcon:Z

.field final synthetic this$0:Lcom/sec/internal/ims/core/ImsIconManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/ImsIconManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/ImsIconManager;

    .line 254
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->this$0:Lcom/sec/internal/ims/core/ImsIconManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isShowRcsIcon()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    return v0
.end method

.method isShowVolteIcon()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    return v0
.end method

.method isShowVowiFiIcon()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    return v0
.end method

.method setShowRcsIcon(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 279
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowRcsIcon:Z

    .line 280
    return-void
.end method

.method setShowVoWiFiIcon(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 269
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVoWiFiIcon:Z

    .line 270
    return-void
.end method

.method setShowVolteIcon(Z)V
    .locals 0
    .param p1, "show"    # Z

    .line 259
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->mShowVolteIcon:Z

    .line 260
    return-void
.end method

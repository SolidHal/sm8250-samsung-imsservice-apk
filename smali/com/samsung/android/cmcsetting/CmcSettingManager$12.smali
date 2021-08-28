.class Lcom/samsung/android/cmcsetting/CmcSettingManager$12;
.super Ljava/lang/Object;
.source "CmcSettingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/cmcsetting/CmcSettingManager;->sendEventCmcWatchActivation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcsetting/CmcSettingManager;)V
    .locals 0

    .line 2490
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$12;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2493
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$12;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-static {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->access$1100(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2494
    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcSettingManager$12;->this$0:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-static {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->access$1100(Lcom/samsung/android/cmcsetting/CmcSettingManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcsetting/listeners/CmcWatchActivationInfoChangedListener;

    if-eqz v1, :cond_0

    .line 2496
    invoke-interface {v1}, Lcom/samsung/android/cmcsetting/listeners/CmcWatchActivationInfoChangedListener;->onChangedWatchActivation()V

    goto :goto_0

    :cond_1
    return-void
.end method

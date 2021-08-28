.class Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$2;
.super Landroid/database/ContentObserver;
.source "RttSettingObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 43
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .line 46
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->access$000(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->access$400()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "rttModeSetting1":I
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RttSettingObserver1 onChange: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver$2;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;->access$300(Lcom/sec/internal/ims/servicemodules/volte2/RttSettingObserver;)Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->setRttMode(II)V

    .line 49
    return-void
.end method

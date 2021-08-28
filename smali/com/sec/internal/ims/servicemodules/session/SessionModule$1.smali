.class Lcom/sec/internal/ims/servicemodules/session/SessionModule$1;
.super Landroid/telephony/PhoneStateListener;
.source "SessionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/session/SessionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/session/SessionModule;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/session/SessionModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    .line 1257
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .line 1261
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call state is changed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SessionModule$1;->this$0:Lcom/sec/internal/ims/servicemodules/session/SessionModule;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/session/SessionModule;->access$102(Lcom/sec/internal/ims/servicemodules/session/SessionModule;I)I

    .line 1263
    return-void
.end method

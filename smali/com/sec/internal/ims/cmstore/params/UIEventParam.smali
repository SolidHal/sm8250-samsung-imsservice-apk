.class public Lcom/sec/internal/ims/cmstore/params/UIEventParam;
.super Ljava/lang/Object;
.source "UIEventParam.java"


# instance fields
.field public mMessage:Ljava/lang/String;

.field public mUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;Ljava/lang/String;)V
    .locals 0
    .param p1, "uiScreen"    # Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;
    .param p2, "message"    # Ljava/lang/String;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    .line 11
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mMessage:Ljava/lang/String;

    .line 12
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIEventParam [mUIScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mUIScreen:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/params/UIEventParam;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

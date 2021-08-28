.class Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;
.super Ljava/lang/Object;
.source "EucMessageTranslator.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;->createEucMessageData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;

.field final synthetic val$acceptButton:Ljava/lang/String;

.field final synthetic val$rejectButton:Ljava/lang/String;

.field final synthetic val$subject:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;

    .line 226
    iput-object p1, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;->this$1:Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector;

    iput-object p2, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;->val$subject:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;->val$rejectButton:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;->val$acceptButton:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAcceptButton()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;->val$acceptButton:Ljava/lang/String;

    return-object v0
.end method

.method public getRejectButton()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;->val$rejectButton:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;->val$subject:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/translate/EucMessageTranslator$EucMessageDataCollector$1;->val$text:Ljava/lang/String;

    return-object v0
.end method

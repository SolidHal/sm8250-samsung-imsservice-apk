.class Lcom/sec/internal/ims/gba/GbaServiceModule$1;
.super Ljava/lang/Object;
.source "GbaServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/gba/GbaServiceModule;->getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field final synthetic val$phoneId:I

.field final synthetic val$requestUri:Ljava/lang/String;

.field final synthetic val$wwwAuthenticateHeader:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/gba/GbaServiceModule;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 365
    iput-object p1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->this$0:Lcom/sec/internal/ims/gba/GbaServiceModule;

    iput p2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->val$phoneId:I

    iput-object p3, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->val$requestUri:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->val$wwwAuthenticateHeader:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 7
    .param p1, "btid"    # Ljava/lang/String;
    .param p2, "gbaKey"    # Ljava/lang/String;
    .param p3, "gbaUicc"    # Z
    .param p4, "gbaResult"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->this$0:Lcom/sec/internal/ims/gba/GbaServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->val$phoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->val$requestUri:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->val$wwwAuthenticateHeader:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/sec/internal/ims/gba/GbaServiceModule;->access$000(Lcom/sec/internal/ims/gba/GbaServiceModule;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 369
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->this$0:Lcom/sec/internal/ims/gba/GbaServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$1;->val$phoneId:I

    const-string v2, "Error"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->notifyOnGbaError(ILjava/lang/String;)V

    .line 374
    return-void
.end method

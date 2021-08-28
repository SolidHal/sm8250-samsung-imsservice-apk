.class public Lcom/sec/internal/constants/ims/aec/AECNamespace$HTTP_CONTENT_TYPE;
.super Ljava/lang/Object;
.source "AECNamespace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/aec/AECNamespace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HTTP_CONTENT_TYPE"
.end annotation


# static fields
.field public static final JSON:Ljava/lang/String; = "application/vnd.gsma.eap-relay.v1.0+json"

.field public static final XML:Ljava/lang/String; = "text/vnd.wap.connectivity-xml"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

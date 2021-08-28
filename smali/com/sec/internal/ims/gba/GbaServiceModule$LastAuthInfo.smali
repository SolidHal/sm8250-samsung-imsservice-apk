.class Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;
.super Ljava/lang/Object;
.source "GbaServiceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/gba/GbaServiceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastAuthInfo"
.end annotation


# instance fields
.field public digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

.field public wwwHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 74
    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;->wwwHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/gba/GbaServiceModule$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/gba/GbaServiceModule$1;

    .line 72
    invoke-direct {p0}, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;-><init>()V

    return-void
.end method

.class public Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;
.super Ljava/lang/Object;
.source "AkaAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/util/AkaAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AkaAuthenticationResponse"
.end annotation


# instance fields
.field mAuthKey:Ljava/lang/String;

.field mEncrKey:Ljava/lang/String;

.field mRes:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "res"    # Ljava/lang/String;
    .param p2, "encrKey"    # Ljava/lang/String;
    .param p3, "authKey"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mRes:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mEncrKey:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mAuthKey:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getAuthKey()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrKey()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mEncrKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRes()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/sec/internal/ims/util/AkaAuth$AkaAuthenticationResponse;->mRes:Ljava/lang/String;

    return-object v0
.end method

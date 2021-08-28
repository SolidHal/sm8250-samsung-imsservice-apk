.class public Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;
.super Ljava/lang/Object;
.source "LocAndTcWebSheetData.java"


# instance fields
.field public clientName:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "clientName"    # Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->url:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->token:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->title:Ljava/lang/String;

    .line 14
    iput-object p4, p0, Lcom/sec/internal/constants/ims/entitilement/data/LocAndTcWebSheetData;->clientName:Ljava/lang/String;

    .line 15
    return-void
.end method

#ifndef THUMBNAILMANAGER_H
#define THUMBNAILMANAGER_H

#include <QObject>
#include <QSqlDatabase>
#include <QDateTime>
#include <QtConcurrent>
#include <QImage>

// t_thumbnails
class ThumbnailRecord
{
public:
    int id;
    int width;
    int height;
    QByteArray thumbnail;
    QDateTime created_at;
};

// t_catalogs
class CatalogRecord
{
public:
    int id;
    int basevolume_id;
    QString name;
    QString description;
    QString path;
    QDateTime created_at;
    QDateTime updated_at;
    bool created;
    bool operator ==(const CatalogRecord& rhs) {return id == rhs.id;}
};

// t_volumes
class VolumeRecord
{
public:
    int id;
    QString name;
    QString realname;
    QString path;
    int frontpage_id;
    int thumb_id;
    int parent_id;
    int catalog_id;
};

class VolumeOrder
{
public:
    int id;
    int parent_id;
    std::wstring realname;
};

class VolumeThumbRecord
{
public:
    int id;
    QString name;
    QString realname;
    QString realnameNoCase;
    QString path;
    int frontpage_id;
    int thumb_id;
    int parent_id;
    int catalog_id;
    QByteArray thumbnail;
};

// t_files
class FileRecord
{
public:
    int id;
    int volume_id;
    QString name;
    int size;
    int width;
    int height;
    int thumb_id;
    QDateTime created_at;
    QDateTime updated_at;
    QByteArray thumbnail;
};

class FileWorker
{
public:
    QString filename;
    QString filepath;
    QFileInfo info;
    QSize imagesize;
    QImage thumb;
    QByteArray thumbbytes;
    QDateTime created_at;
    int asc;
    QByteArray alternated;
};

class VolumeWorker
{
public:
    QString dirpath;
    int volume_id;
    int parent_id;
    int catalog_id;
    FileWorker frontPage;
    QStringList subpaths;
};


class ThumbnailManager : public QObject
{
    Q_OBJECT
public:
    ThumbnailManager(QObject* parent, QString dbpath);
    void SetFrontPageOnly(bool only) { m_frontPageOnly=only; }

    /* Volumes/Files */
    int createSubVolumes(QString dirpath, int catalog_id, int parent_id=-1);
    int createVolumeContent(QString dirpath, int parent_id=-1);
    int createVolumeInternal(QString dirpath, int catalog_id, int parent_id=-1);
    void updateVolumeOrders();

    int createVolumesFrontPageOnly(QString dirpath, int catalog_id);
    VolumeWorker createSubVolumesConcurrent(QString dirpath, int volume_id, int parent_id);


    /* Catalogs */
    CatalogRecord createCatalog(QString name, QString path);
    QFutureWatcher<CatalogRecord>* createCatalogAsync(QString name, QString path);
    void cancelCreateCatalogAsync();
    QMap<int, CatalogRecord> catalogs();
    QList<VolumeThumbRecord> volumes();


    void deleteCatalog(int id);
    void updateCatalogName(int id, QString name);
    void deleteAllCatalogs();
    void transaction();
    void forceTransaction();
    void commit();
    void rollback();
    void vacuum();

    void dispose();

    bool execInsertQuery(QSqlQuery& query, const QString& tablename);
    /**
     * @brief isImageFile check the file will be a image file
     * @param path
     * @return return true, if path of file maybe a image file
     */
    static bool isImageFile(QString path);
    /**
     * @brief isArchiveFile check the file will be an archive file
     * @param path
     * @return return true, if path of file maybe an archive file
     */
    static bool isArchiveFile(QString path);
    /**
     * @brief isExifImageFile check the file will have exif
     * @param path
     * @return return true, if path of file maybe have exif
     */
    static bool isJpegImageFile(QString path);
    static bool isHeavyImageFile(QString path);
    /**
     * @brief fileSort sort the filenames as current sorting policy
     * @param filenames
     * @return
     */
    static void sortFiles(QStringList& filenames);
    static bool caseInsensitiveLessThan(const QString &s1, const QString &s2);
    static bool caseInsensitiveLessThanWString(const std::wstring &s1, const std::wstring &s2);

    static QString DateTimeToIsoString(QDateTime datetime);
    static QString currentDateTimeAsString();

signals:
    void catalogCreated(CatalogRecord catalog);

//private slots:
//    void on_catalogCreated();

private:
    QSqlDatabase m_db;
    bool m_transaction;
    QFutureWatcher<CatalogRecord> m_catalogWatcher;
    int m_catalogWorkProgress;
    int m_catalogWorkMax;
    bool m_frontPageOnly;

    static QList<QByteArray> st_supportedImageFormats;
    static QStringList st_jpegpegImageFormats;
    static QStringList st_heavyImageFormats;

    FileWorker createFileRecord(QString filename, QString filepath, int filename_asc);
};

#endif // THUMBNAILMANAGER_H

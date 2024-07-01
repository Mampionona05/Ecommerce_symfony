<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230628091113 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE carrier CHANGE price price DOUBLE PRECISION NOT NULL');
        $this->addSql('ALTER TABLE `order` ADD state INT NOT NULL, DROP is_paid, CHANGE carrier_price carrier_price DOUBLE PRECISION NOT NULL, CHANGE stripe_session_id stripe_session_id VARCHAR(255) NOT NULL');
        $this->addSql('ALTER TABLE order_details CHANGE price price DOUBLE PRECISION NOT NULL, CHANGE total total DOUBLE PRECISION NOT NULL');
        $this->addSql('ALTER TABLE product CHANGE price price DOUBLE PRECISION NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE product CHANGE price price INT NOT NULL');
        $this->addSql('ALTER TABLE carrier CHANGE price price INT NOT NULL');
        $this->addSql('ALTER TABLE `order` ADD is_paid TINYINT(1) NOT NULL, DROP state, CHANGE carrier_price carrier_price INT NOT NULL, CHANGE stripe_session_id stripe_session_id VARCHAR(255) DEFAULT NULL');
        $this->addSql('ALTER TABLE order_details CHANGE price price INT NOT NULL, CHANGE total total INT NOT NULL');
    }
}
